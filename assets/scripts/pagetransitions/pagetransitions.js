var PageTransitions = (function() {

	var $main = $( '#pt-main' ),
	$hamburger = $('.hamburger'),
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
	support = Modernizr.cssanimations,
	initialized = false;

	function onEndAnimation( outpage, inpage ) {
		if(!endCurrPage || !endNextPage){
			return;
		}
		$(outpage).attr( 'class', $(outpage).data( 'originalClassList' ) );
		$(inpage).attr( 'class', $(inpage).data( 'originalClassList' ) + ' pt-page-current' );
		isAnimating = false;
	}

	function animate(current,next,action) {
		if( isAnimating ) {
			return false;
		}
		isAnimating = true;

		var $nextPage = $(next);
		var $currPage = $(current);
		var outClass, inClass;
		if(action === "open"){
			outClass = 'pt-page-moveToRightFade';
			inClass = 'pt-page-current pt-page-moveFromLeftFade';
		}
		else {
			outClass = 'pt-page-moveToLeftFade';
			inClass = 'pt-page-current pt-page-moveFromRightFade';
		}

		$currPage.addClass( outClass );

		$currPage.on( animEndEventName, function() {
			// $currPage.off( animEndEventName );
			endCurrPage = true;
			onEndAnimation( current, next );
		} );


		$nextPage.addClass(inClass ) ;
		$nextPage.on( animEndEventName, function() {
			// $nextPage.off( animEndEventName );
			endNextPage = true;
			onEndAnimation( current, next );
		} );
	}

	function init() {
		$(pageMain).addClass( 'pt-page-current' );

		$hamburger.click(function(){
			if(!initialized){
				initialized = true;
				$('.pt-page').each( function() {
					$( this ).data( 'originalClassList', $( this ).attr( 'class' ));
				} );
			}
			var action = "";
			if($(this).hasClass('is-active')){
				//close
				currPage = pageMenu;
				nextPage = pageMain;
				action = "close";
			} else {
				//open
				currPage = pageMain;
				nextPage = pageMenu;
				action = "open";
			}
			animate(currPage,nextPage,action);
		});
	}

	init();

	return {
		init : init
	};

})();
