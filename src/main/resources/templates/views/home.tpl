layout 'layouts/twoColumn.tpl', true,
    title: 'Tammo Laube Home',
    leftColumn: contents {
        include template:'partials/aboutMe.tpl'
        include template:'partials/cardList.tpl'
    },
    rightColumn: contents {
    }
