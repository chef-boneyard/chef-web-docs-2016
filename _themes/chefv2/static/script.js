$(document).ready(function() { 
  // Nav Interactions
  const $navLinks = $(".nav-links.links-main");
  const $bodyWrap = $(".body-wrap");
  const $navDocs = $(".nav-docs");
  const $navElements = [$navDocs, $navLinks, $bodyWrap];
  const navBreakpoint = 730; // navBreakpoint should be the same as breakpoint in _nav.scss file
  const navHeight = $(".nav-main").outerHeight();
  var navDocsHeight, navLinksHeight, windowWidth;
  var largeScreen;
  var sidebarOpen = false;

  var removeOpenClass = function(elements) {
    $.each(elements, function(index, value) {
      this.removeClass("is-open");
    });
  }

  var checkWindowSize = function() {
    windowWidth = $(window).width();
    $bodyWrap.width(windowWidth);
    removeOpenClass($navElements);

    if (windowWidth > navBreakpoint) {
      largeScreen = true;
      $navLinks.css("top", "");
    } else {
      largeScreen = false;
      navDocsHeight = $navDocs.outerHeight();
      navLinksHeight = $navLinks.outerHeight();
      $navLinks.css("top", navHeight + navDocsHeight + "px");
    }
  }

  checkWindowSize();

  $(window).resize(function () {
    checkWindowSize();
  });

  $("#nav-icon").click(function () {
    if (!largeScreen) {
      if ($navLinks.hasClass("is-open")) {
        removeOpenClass($navElements);
      } else {
        $navLinks.addClass("is-open");
        $navDocs.addClass("is-open");
      }
    }
  });

  // Docs Nav 
  $(".has-sub-items-content").click(function() {
    $(this).parent(".has-sub-items").toggleClass("is-open");
  });

  $(".sub-items a").click(function(){
    $(".sub-items .is-active").removeClass("is-active");

    $(this).addClass("is-active");
  });

  // Version Picker Dropdown 
  $(".dropdown-select").click(function () {
    $(this).parent(".dropdown-wrapper").toggleClass("is-open");
  });

  $("html").click(function(event) {
    if ($(".dropdown-wrapper").hasClass("is-open") && !($(event.target).parents(".dropdown-wrapper").length)) {  
      $(".dropdown-wrapper").removeClass("is-open");
    }
    })
  
  $(".dropdown-wrapper .has-sub-items").click(function() {
    if (!largeScreen) {
      $(this).toggleClass("is-open");
      $(this).find(".dropdown-sub-items").toggleClass("is-open");
    }
  });

});
