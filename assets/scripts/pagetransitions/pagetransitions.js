var PageTransitions = (function() {

	var $main = $( '#pt-main' ),
	$pages = $main.children( 'div.pt-page' ),
	$menu = $( '.navbar-toggle' ),
	$menuClose = $( '.navbar-close' ),
	isAnimating = false,
	endCurrPage = false,
	endNextPage = false,
	$pageMain = $('.pt-page-main'),
	$pageMenu = $('.pt-page-menu'),
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

	function resetPage( $outpage, $inpage ) {
		$outpage.attr( 'class', $outpage.data( 'originalClassList' ) );
		$inpage.attr( 'class', $inpage.data( 'originalClassList' ) + ' pt-page-current' );
	}

	function onEndAnimation( $outpage, $inpage ) {
		endCurrPage = false;
		endNextPage = false;
		resetPage( $outpage, $inpage );
		isAnimating = false;
	}

	function animate($currPage,$nextPage) {
		console.log("animate",$currPage,$nextPage,isAnimating);
		if( isAnimating ) {
			return false;
		}
		isAnimating = true;

		$nextPage.addClass( 'pt-page-current' );

		var outClass = '', inClass = '';

		outClass = 'pt-page-scaleDown';
		inClass = 'pt-page-moveFromTop pt-page-ontop';


		$currPage.addClass( outClass ).on( animEndEventName, function() {
			$currPage.off( animEndEventName );
			endCurrPage = true;
			if( endNextPage ) {
				onEndAnimation( $currPage, $nextPage );
			}
		} );

		$nextPage.addClass( inClass ).on( animEndEventName, function() {
			$nextPage.off( animEndEventName );
			endNextPage = true;
			if( endCurrPage ) {
				onEndAnimation( $currPage, $nextPage );
			}
		} );

		if( !support ) {
			onEndAnimation( $currPage, $nextPage );
		}

	}

	function openMenu(){
		var $currPage = $pageMain;
		var $nextPage = $pageMenu;
		animate($currPage,$nextPage);
	}

	function closeMenu(){
		var $nextPage = $pageMenu;
		var $currPage = $pageMain;
		animate($currPage,$nextPage);
	}

	function init() {

		$pages.each( function() {
			var $page = $( this );
			$page.data( 'originalClassList', $page.attr( 'class' ) );
		} );

		$pageMain.addClass( 'pt-page-current' );

		$menu.on( 'click', function() {
			openMenu();
		} );

		$menuClose.on( 'click', function() {
			closeMenu();
		} );

	}

	init();

	return {
		init : init
	};

})();
