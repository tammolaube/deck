var angular = require('angular');
var _ = require('lodash');
var showdown = require('showdown');

var tammolaube = angular.module(
    'tammolaube',
    [
        require('angular-sanitize'),
        require('angular-route')
    ]
);

tammolaube.config(function($routeProvider, $locationProvider, $httpProvider) {

    $routeProvider.when('/', {
		templateUrl : 'partials/deck',
		controller : 'DeckCtrl'
	}).when('/edit', {
		templateUrl : 'partials/edit',
		controller : 'EditCtrl'
	}).otherwise('/');

    $httpProvider.interceptors.push(function($q) {
        return {
            'responseError': function(rejection) {
               console.log('httpProvider:');
               console.log(rejection);
               return $q.reject(rejection);
            }
        };
    });

});

tammolaube.controller('EditCtrl', function() {});

tammolaube.controller('DeckCtrl',
                        ['$scope', '$http', function($scope, $http) {

    $scope.converter = new showdown.Converter();

    $http.get('/aboutme').success(function(data) {
        $scope.aboutMe = data;
    });

    $http.get('/cards').success(function(data) {
        $scope.cards = data;
    });

}]);

tammolaube.controller('AboutMeFormCtrl',
                        ['$scope', '$http', function($scope, $http) {

    $scope.converter = new showdown.Converter();

    $http.get('/aboutme/all').success(function(data) {
        $scope.aboutMes = data;
    });

    $scope.create = function() {
        console.log('Create:');
        console.log($scope.newAboutMe);
        $http.post('/aboutme', $scope.newAboutMe).then(
            function successCallback(response) {
                $scope.aboutMes.push(response.data);
                $scope.newAboutMe = null;
                $scope.newAboutMeForm.$setPristine();
            }, function errorCallback(response) {
            }
        );
    };

    $scope.save = function(aboutMe) {
        console.log('Save:');
        console.log(aboutMe);
        $http.post('/aboutme', aboutMe).then(
            function successCallback(response) {
                var aboutMe = response.data;
                // remove add to make form pristine
                _.remove($scope.aboutMes, function(aboutMeA) {
                    return aboutMeA.id == aboutMe.id;
                });
                $scope.aboutMes.push(aboutMe);
            }, function errorCallback(response) {
            }
        );
    };

    $scope.delete = function(aboutMe) {
        console.log('Delete:');
        console.log(aboutMe);
        $http.delete('/aboutme/' + aboutMe.id).then(
            function successCallback(response) {
                _.remove($scope.aboutMes, function(aboutMeA) {
                    return aboutMeA.id == aboutMe.id;
                });
            }, function errorCallback(response) {
            }
        );
    };
}]);

tammolaube.controller('CardFormCtrl',
                        ['$scope', '$http', function($scope, $http) {

    $http.get('/cards').success(function(data) {
        $scope.cards = data;
    });

    $scope.create = function() {
        console.log('Create:');
        console.log($scope.newCard);
        $http.post('/cards', $scope.newCard).then(
            function successCallback(response) {
                $scope.cards.push(response.data);
                $scope.newCard = null;
                $scope.newCardForm.$setPristine();
            }, function errorCallback(response) {
            }
        );
    };

    $scope.save = function(card) {
        console.log('Save:');
        console.log(card);
        $http.post('/cards', card).then(
            function successCallback(response) {
                var card = response.data;
                // remove add to make form pristine
                _.remove($scope.cards, function(cardA) {
                    return cardA.id == card.id;
                });
                $scope.cards.push(card);
            }, function errorCallback(response) {
            }
        );
    };

    $scope.delete = function(card) {
        console.log('Delete:');
        console.log(card);
        $http.delete('/cards/' + card.id).then(
            function successCallback(response) {
                _.remove($scope.cards, function(cardA) {
                    return cardA.id == card.id;
                });
            }, function errorCallback(response) {
            }
        );
    };

}]);
