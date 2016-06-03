var PageTransitions = (function() {

	var $main = $( '#pt-main' ),
	$hamburger = $('.hamburger'),
	$pages = $('.pt-page'),
	pageMain = '.pt-page-main',
	pageMenu = '.pt-page-menu',
	isAnimating = false,
	endCurrPage = false,
	endNextPage = false,
	animEndEventNames = {
		'WebkitAnimation' : 'webkitAnimationEnd',
		'OAnimation' : 'oAnimationEnd',
		'msAnimation' : 'MSAnimationEnd',
		'animation' : 'animationend'
	},
	// animation end event name
	animEndEventName = animEndEventNames[ Modernizr.prefixed( 'animation' ) ],
	// support css animations
	support = Modernizr.cssanimations;

	function onEndAnimation( outpage, inpage ) {
		if(!endCurrPage || !endNextPage){
			return;
		}
		$(outpage).attr( 'class', $(outpage).data( 'originalClassList' ) );
		$(inpage).attr( 'class', $(inpage).data( 'originalClassList' ) + ' pt-page-current' );
		isAnimating = false;
	}

	function animate(current,next) {
		if( isAnimating ) {
			return false;
		}
		isAnimating = true;

		var $nextPage = $(next);
		var $currPage = $(current);

		$currPage.addClass( 'pt-page-scaleDown' );

		$currPage.on( animEndEventName, function() {
			// $currPage.off( animEndEventName );
			endCurrPage = true;
			onEndAnimation( current, next );
		} );


		$nextPage.addClass( 'pt-page-current pt-page-moveFromTop pt-page-ontop' ) ;
		$nextPage.on( animEndEventName, function() {
			// $nextPage.off( animEndEventName );
			endNextPage = true;
			onEndAnimation( current, next );
		} );
	}

	function init() {

		$pages.each( function() {
			var $page = $( this );
			$page.data( 'originalClassList', $page.attr( 'class' ) );
		} );

		$(pageMain).addClass( 'pt-page-current' );

		$hamburger.click(function(){
			if($(this).hasClass('is-active')){
				//close
				currPage = pageMenu;
				nextPage = pageMain;
			} else {
				//open
				currPage = pageMain;
				nextPage = pageMenu;
			}
			animate(currPage,nextPage);
		});
	}

	init();

	return {
		init : init
	};

})();
