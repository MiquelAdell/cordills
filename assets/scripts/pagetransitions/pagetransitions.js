var PageTransitions = (function() {

	var $main = jQuery( '#pt-main' ),
	$hamburger = jQuery('.hamburger'),
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
		jQuery(outpage).attr( 'class', jQuery(outpage).data( 'originalClassList' ) );
		jQuery(inpage).attr( 'class', jQuery(inpage).data( 'originalClassList' ) + ' pt-page-current' );
		isAnimating = false;
	}


	function animate(current,next,action){
		if( isAnimating ) {
			return false;
		}
		isAnimating = true;

		var $nextPage = jQuery(next);
		var $currPage = jQuery(current);
		var outClass, inClass;
		if(action === "left"){
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
		jQuery(pageMain).addClass( 'pt-page-current' );

		$hamburger.click(function(){
			if(!initialized){
				initialized = true;
				jQuery('.pt-page').each( function() {
					jQuery( this ).data( 'originalClassList', jQuery( this ).attr( 'class' ).replace("pt-page-current", ""));
				} );
			}
			var action = "";
			if(jQuery(this).hasClass('is-active')){
				//close
				currPage = pageMenu;
				nextPage = pageMain;
				action = "right";
			} else {
				//open
				currPage = pageMain;
				nextPage = pageMenu;
				action = "left";
			}
			animate(currPage,nextPage,action);
		});
	}



	init();

	return {
		init : init,
		animate : animate
	};

})();


// PageTransitions.animate('.pt-page-menu','.pt-page-main','right');
