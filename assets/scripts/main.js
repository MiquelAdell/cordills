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
    return jQuery(this).position().top+jQuery(this).height();
  },
  right: function () {
    return jQuery(this).position().left+jQuery(this).width();
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

      },
      finalize: function() {
        // JavaScript to be fired on all pages, after page specific JS is fired

      }
    },
    // Home page
    'home': {
      init: function() {
        // JavaScript to be fired on the home page
      },
      finalize: function() {

        var magnetismEnabled = false;
        var scrollRepositionEnabled = false;

        var myScrollMagic = function(){
          // JavaScript to be fired on the home page, after the init JS
          var placeIcons = function(){
            $('.section-icon-holder').each(function(){
              var $icon = $(this).find('.section-icon');
              var marginTop = $( window ).height() / 2 - $icon.height() / 2;
              $(this).css('margin-top',marginTop);
            });
          };

          if(scrollRepositionEnabled){
            $( window ).resize(function() {
              placeIcons();
            });
            placeIcons();


            // SCROLL MAGIC
            var controller = new ScrollMagic.Controller();
            var scenes = [];
            var nElements = $('section').length;
            var lastMillisecondScrolled = 0;

            for (var i = 0; i < nElements; i++){
              var sectionHeight, duration, id, offset, iconHeight;

              sectionHeight = $('section').first().height();
              iconHeight = $('.section-icon').first().height();
              id = i+1;

              if(i === 0){
                  offset = 0;
              } else {
                  offset = sectionHeight*(i-1)+sectionHeight/2 ;
              }

              if(i === 0){
                duration =  sectionHeight / 2;
              } else if(i === (nElements-1)){
                duration =  sectionHeight / 2;
              } else {
                duration =  sectionHeight;
              }

              scenes[i] = new ScrollMagic.Scene({
                offset: offset, duration: duration
              })
              // .addIndicators({name: "i: "+i+" offset: "+offset+" duration: "+duration})
              .addTo(controller);
            }

            //magnetism
            var stopped = true;
            var respositioning = false;
            if(magnetismEnabled){
              var globalScene = new ScrollMagic.Scene({
                offset: 0, duration: $('body').height() - $(window).height()/2
              })
              .addTo(controller);
              globalScene.on("progress", function (event) {
                if(!respositioning){
                  var d = new Date();
                  lastMillisecondScrolled = d.getTime();
                  stopped = false;
                }
              });

              var repositionIfNeeded = function(){
                if(stopped){
                  return;
                }
                var d = new Date();
                currentMillisecond = d.getTime();
                var millisecondsWithoutScroll = currentMillisecond - lastMillisecondScrolled;
                if(millisecondsWithoutScroll > 333){
                  //a third of a second has passed without scroll
                  var found = false;
                  $('section').each(function(){
                    if(!found){
                      var offsetTop = $(window).scrollTop() - $(this).top();
                      var offsetMinimum = $('section').first().height() * 0.33;
                      //Dettect if we need to reposition because we are at least than 33% of a bonduary

                      if(Math.abs(offsetTop) < offsetMinimum){
                        found = true;
                        if(offsetTop === 0){
                          //stopped
                          repositioning = false;
                          stopped = true;
                        }
                        else {
                          //go to this top
                          respositioning = true;
                          stopped = true;
                          closestSectionId = $(this).index();
                        }
                      }

                      if(respositioning){
                        controller.scrollTo(function (newScrollPos) {
                          repositioning = true;
                          stopped = true;
                          $("html, body").animate({scrollTop: newScrollPos},function(){
                            stopped = true;
                            respositioning = false;
                          });
                        });
                        controller.scrollTo($('section').eq(closestSectionId).top());
                      }
                    }

                  });
                }
              };

              //clock
              var clock = setInterval(function(){
                repositionIfNeeded();
              }, 33);
            }

            $.each(scenes,function(index,scene){

              scene.on("progress", function (event) {

                // HELPER VARIABLES
                var pixelsFromTop = sectionHeight*scene.progress();
                var pixelsToBottom = sectionHeight - pixelsFromTop;

                // POSITION
                var sceneN = 0;
                $('.section-icon-holder').each(function(){
                  var marginTop = 0;

                  if(index-1 === sceneN){

                      // prev scene
                      if(index === 0){
                        // there is no prev scene when we are at the first scene
                      } else if( index > 0 && index < nElements-1) {
                        marginTop = sectionHeight-iconHeight/2+pixelsFromTop;
                      } else if (index === nElements-1){
                        marginTop = sectionHeight-iconHeight/2+pixelsFromTop/2;
                      }


                  } else if(index === sceneN){

                    // current scene
                    if(index === 0){
                      marginTop = sectionHeight/2 + pixelsFromTop/2 - iconHeight/2;
                    } else if( index > 0 && index < nElements-1) {
                      marginTop = pixelsFromTop - iconHeight/2 ;
                    } else if (index === nElements-1){
                      marginTop = pixelsFromTop/2 - iconHeight/2;
                    }

                  } else if(index+1 === sceneN){

                    // next scene
                    if(index === 0){
                      marginTop = -pixelsToBottom/2 - iconHeight/2;
                    } else if( index > 0 && index < nElements-1) {
                      marginTop = -pixelsToBottom -iconHeight/2;
                    } else if (index === nElements-1){
                      // there is no next scene when we are at the last scene
                    }

                  }
                  sceneN++;
                  $(this).css('margin-top',marginTop+'px');
                });


                // CLIPPING
                var clipping = 0;

                $('.section-icon').hide();

                if( (
                      index > 0 && pixelsFromTop < iconHeight/2
                    ) || (
                      index+1 === nElements && pixelsFromTop < iconHeight
                ) ) {
                  //PREV
                  if(index+1 === nElements){
                    clipping = iconHeight/2 - pixelsFromTop/2;
                  } else {
                    clipping = iconHeight/2 - pixelsFromTop;
                  }
                  $('.section-icon').eq(index-1).css({'clip':'rect(auto auto '+iconHeight-clipping+'px auto)'}).show();
                  $('.section-icon').eq(index).css({'clip':'rect('+clipping+'px auto auto auto)'}).show();

                } else if(
                  (
                    index === 0 && pixelsToBottom < iconHeight
                  ) || (
                    index >= 1 && index+1 < nElements && pixelsToBottom < iconHeight/2
                  )
                ) {
                  //NEXT
                  if(index === 0){
                    clipping = iconHeight - (pixelsFromTop+iconHeight-sectionHeight)/2;
                  }
                  else {
                    clipping = iconHeight/2 + pixelsToBottom;
                  }

                  $('.section-icon').eq(index).css({'clip':'rect(auto auto '+clipping+'px auto)'}).show();
                  $('.section-icon').eq(index+1).css({'clip':'rect('+clipping+'px auto auto auto)'}).show();

                } else {
                  // don't clip
                  $('.section-icon').eq(index).css({'clip':'rect(auto auto auto auto)'}).show();
                }

              });
            });
          }
        };

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
                })
            );

        })(jQuery, ResponsiveBootstrapToolkit);







      }
    },
    // About us page, note the change from about-us to about_us.
    'about_us': {
      init: function() {
        // JavaScript to be fired on the about us page
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


})(jQuery); // Fully reference jQuery after this point.
