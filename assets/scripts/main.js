// HELPERS
// TODO: move this as an external library
jQuery.fn.extend({
	scrollBottom: function () {
		return jQuery(this).scrollTop() + jQuery(this).height();
	},
	top: function () {
		return jQuery(this).position().top;
	},
	left: function () {
		return jQuery(this).position().left;
	},
	bottom: function () {
		return jQuery(this).position().top+jQuery(this).outerHeight();
	},
	right: function () {
		return jQuery(this).position().left+jQuery(this).outerWidth();
	}
});

jQuery.fn.cssNum = function(){
	return parseFloat(jQuery.fn.css.apply(this,arguments));
};

jQuery(function () { jQuery("[data-toggle='tooltip']").tooltip(); });


/* ========================================================================
* DOM-based Routing
* Based on http://goo.gl/EUTi53 by Paul Irish
*
* Only fires on body classes that match. If a body class contains a dash,
* replace the dash with an underscore when adding it to the object below.
*
* .noConflict()
* The routing is enclosed within an anonymous function so that you can
* always reference jQuery with $, even when in .noConflict() mode.
* ======================================================================== */

(function($) {

	// Use this variable to set up the common and page specific functions. If you
	// rename this variable, you will also need to rename the namespace below.
	var Sage = {
		// All pages
		'common': {
			init: function() {
				// JavaScript to be fired on all pages
				//hamburger
				$('.hamburger').click(function(){
					if($(this).hasClass('is-active')){
						$(this).removeClass('is-active');
					} else {
						$(this).addClass('is-active');
					}
				});
			},
			finalize: function() {

				var langs = ['ca','es','en'];

				// scroll and URL
				var currentSection = "";
				var currentLang = "";
				currentLang = "ca";

				$(".pt-page-main").bind('scroll', function() {

					var getScrollSection = function(top){
						var toReturn = null;
						$('.front-page-section').each(function(){
							var $section = $(this);
							if($section.get(0).getBoundingClientRect().top <= 0 && $section.get(0).getBoundingClientRect().bottom >= 0){
								toReturn = $section.prop('id');
							}
						});
						return toReturn;
					};

					var scrolledSection = getScrollSection($(this).scrollTop());

					if(scrolledSection && currentSection !== scrolledSection){
						currentSection = scrolledSection;
						//trigger enter section
						var url = "/";
						if(currentSection){
							url = "/"+currentSection;
						}

						$('.nav a.active').removeClass('active');
						$('a[href$="/'+currentSection+'"]').addClass('active');


						var stateObj = { section: currentSection };
						window.history.pushState(stateObj, currentSection, url);

					}
				});

				var $homeNavbar = $('.nav-home-container');
				if($homeNavbar.length){
					var $primaryNavbar = $('.nav-primary-container'),
					$scrollElement = $('.pt-page-main'),
					$mainMenu = $('#menu-main-menu-home'),
					fadeTime = 200,
					$window = $(window);

					var mainMenuVisible = false;

					var toggleMainMenu = function(show){
						if(show){
							mainMenuVisible = true;
							$homeNavbar.removeClass('visible');
							$primaryNavbar.addClass('visible');
							$mainMenu.addClass('dettached');
						} else {
							mainMenuVisible = false;
							$primaryNavbar.removeClass('visible');
							$homeNavbar.addClass('visible');
							$mainMenu.removeClass('dettached');
						}
					};


					$scrollElement.scroll(function() {
						if (document.getElementById('brand-container').getBoundingClientRect().bottom - 53 <= 0) {
							if(!mainMenuVisible){
								toggleMainMenu(true);
							}
						} else {
							if(mainMenuVisible){
								toggleMainMenu(false);
							}
						}
					});
				}


				(function($, viewport){
					// Executes only in XS breakpoint
					if(viewport.is('xs')) {
						// ...
					}

					// Executes in SM, MD and LG breakpoints
					if(viewport.is('>=sm')) {
						myScrollMagic();
					}

					// Executes in XS and SM breakpoints
					if(viewport.is('<md')) {
						// ...
					}

					// Execute code each time window size changes
					$(window).resize(
						viewport.changed(function() {
							if(viewport.is('xs')) {
								// ...
							}
							// getTextWidth
						})
					);

				})(jQuery, ResponsiveBootstrapToolkit);

				//all other
				// JavaScript to be fired on all pages, after page specific JS is fired

				/* SINGLE PAGE INTERFACE */
				$('.spi-link').click(function(event) {
					if($('body').hasClass('home') || $('body').hasClass('page-template-front-page')){
						event.preventDefault();

						var linkElementScroll = function($anchor){
							var target = $anchor.data().target;

							$('.pt-page-main').animate({
								scrollTop: $(target).top()+$('#brand-container').outerHeight()
							}, 1000);
						};

						var $anchor = $(this);

						if($('.hamburger').hasClass('is-active')){
							$('.hamburger').click();
							setTimeout(function(){
								linkElementScroll($anchor);
							},1000);
						}
						else {
							linkElementScroll($anchor);
						}
					}
				});

				/* HISTORY */
				$(window).on("popstate", function(e) {
					var section = e.originalEvent.state.section;
					if($('#'+section).length){
						$('.pt-page-main').animate({
							scrollTop: $('#'+section).top()+$('#brand-container').outerHeight()
						}, 1000);
					}
				});

				// if it's frist load maybe we have something in the url (and not in history) and we need to apply changes
				if(window.location.pathname !== "/"){
					var pathname = window.location.pathname.substring(1); //remove the first slash

					var isDefaultUrl = function(pathname){
						for (var i = 0, len = langs.length; i < len; i++) {
							if(pathname === langs[i] || pathname === langs[i]+"/"){
								return true;
							}
						}
						return false;
					};
					var test = isDefaultUrl(pathname);
					if(!isDefaultUrl(pathname)){
						id = pathname.substring(3); //remove the two character lang code + slash
						if( (id === 'projecte-destacat' || id === 'proces' || id === 'tecnologies' || id === 'fonaments') && $('#'+id).length){
							$('.pt-page-main').animate({
								scrollTop: $('#'+id).top()+$('#brand-container').outerHeight()
							}, 1000);
						}
					}
				}

				// /* TECHNOLOGIES */
				// $(window).resize(function() {
				// 	var size = $('.technology-panel .technology').width();
				// 	$('.technology-panel .technology').height(size);
				// 	$('.technology-panel .text').height($('.technology-panel .technology .icon').height());
				// 	$('.technology-panel .text').width(size);
				// });


				/* STICKY FOOTER */
				$(window).resize(function() {
					if($('.pt-page-holder').height() <= $(window).height()){
						$('.pt-page-holder').height($(window).height());
						$('footer').addClass("stick-to-bottom");
					} else {
						$('footer').removeClass("stick-to-bottom");
					}
				});

				/* container-double fix height */
				$(window).resize(function() {
					$('.container-double').each(function(){
						$container = $(this);
						if($container.find('.image-holder').height() > $container.find('.text-holder').height()){
							$container.find('.text-holder').height($container.find('.image-holder').height());
						} else {
							$container.find('.image-holder').height($container.find('.text-holder').height());
						}
					});
				});
			}

		},
		// About us page, note the change from about-us to about_us.
		'contacte': {
			init: function() {
				// JavaScript to be fired on the contacte page
				var currentSection = "contacte";
				$('a[href$="/'+currentSection+'/"]').addClass('active');

				var $contactContainer = $('.page-template-contacte-page .contact-container');
				var $imageHolder = $('.page-template-contacte-page .image-holder');
				var $image = $('.page-template-contacte-page .image-holder .image');

				$(window).resize(function() {
					if($(window).width() > 767){
						if(!$('.fake-footer').length){
							$('body').append('<div class="fake-footer"></div>');
						}
						$contactContainer.height($('footer').top() - $('.contact-container').top());

						if($imageHolder.height() < $contactContainer.height()){
							$imageHolder.height($contactContainer.height());
						} else {
						}
					}
					else {
						$('.fake-footer').remove();
						$contactContainer.height('auto');
					}
				});
			},
			finalize: function() {
			}
		}
	};

	// The routing fires all common scripts, followed by the page specific scripts.
	// Add additional events for more control over timing e.g. a finalize event
	var UTIL = {
		fire: function(func, funcname, args) {
			var fire;
			var namespace = Sage;
			funcname = (funcname === undefined) ? 'init' : funcname;
			fire = func !== '';
			fire = fire && namespace[func];
			fire = fire && typeof namespace[func][funcname] === 'function';

			if (fire) {
				namespace[func][funcname](args);
			}
		},
		loadEvents: function() {
			// Fire common init JS
			UTIL.fire('common');

			// Fire page-specific init JS, and then finalize JS
			$.each(document.body.className.replace(/-/g, '_').split(/\s+/), function(i, classnm) {
				UTIL.fire(classnm);
				UTIL.fire(classnm, 'finalize');
			});

			// Fire common finalize JS
			UTIL.fire('common', 'finalize');
		}
	};

	// Load Events
	$(document).ready(UTIL.loadEvents);
	setTimeout(function(){$(window).resize();},0);
	setTimeout(function(){$(window).resize();},100);
	setTimeout(function(){$(window).resize();},250);
	setTimeout(function(){$(window).resize();},500);
	setTimeout(function(){$(window).resize();},1000);
})(jQuery); // Fully reference jQuery after this point.
