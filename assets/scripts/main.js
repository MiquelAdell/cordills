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
        (function() {
          var config = {
            kitId: 'ylh5etw',
            scriptTimeout: 3000
          };
          var h=document.getElementsByTagName("html")[0];h.className+=" wf-loading";var t=setTimeout(function(){h.className=h.className.replace(/(\s|^)wf-loading(\s|$)/g," ");h.className+=" wf-inactive"},config.scriptTimeout);var tk=document.createElement("script"),d=false;tk.src='//use.typekit.net/'+config.kitId+'.js';tk.type="text/javascript";tk.async="true";tk.onload=tk.onreadystatechange=function(){var a=this.readyState;if(d||a&&a!="complete"&&a!="loaded")return;d=true;clearTimeout(t);try{Typekit.load(config)}catch(b){}};var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(tk,s);
        })();
      }
    },
    // Home page
    'home': {
      init: function() {
        // JavaScript to be fired on the home page
      },
      finalize: function() {
        // JavaScript to be fired on the home page, after the init JS
        var placeIcons = function(){
          $('.section-icon').each(function(){
            var marginTop = ($( window ).height() / 2) - ($(this).height() / 2);
            $('.section-icon').css('margin-top',marginTop);
          });
        };

        $( window ).resize(function() {
          placeIcons();
        });
        placeIcons();

        $('.section-icon').each(function(){
          var marginTop = ($( window ).height() / 2) - ($(this).height() / 2);
          $('.section-icon').css('margin-top',marginTop);
        });

        // SCROLL MAGIC
        var controller = new ScrollMagic.Controller();
        var scenes = [];
        var nElements = $('section').length;


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
          .addTo(controller);
        }

        $.each(scenes,function(index,scene){

          scene.on("progress", function (event) {
            $('.section-icon').hide();
            $('.section-icon').eq(index).show();

            var pixelsFromTop = sectionHeight*scene.progress();
            var pixelsToBottom = sectionHeight - pixelsFromTop;
            var clipping = 0;

            if(
                (
                  index > 0 && pixelsFromTop < iconHeight/2
                ) || (
                  index+1 === nElements && pixelsFromTop < iconHeight
                )
              ) {
              //PREV
              if(index+1 === nElements){
                clipping = iconHeight/2 - pixelsFromTop/2;
              }
              else {
                clipping = iconHeight/2 - pixelsFromTop;

              }

              $('.section-icon').eq(index-1).show();
              $('.section-icon').eq(index).css({'clip':'rect('+clipping+'px auto auto auto)'});

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
                clipping = iconHeight/2+pixelsToBottom;
              }

              $('.section-icon').eq(index+1).show();
              $('.section-icon').eq(index+1).css({'clip':'rect('+clipping+'px auto auto auto)'});

            } else {

              $('.section-icon').eq(index).css({'clip':'rect(auto auto auto auto)'});
            }

          });
        });

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
