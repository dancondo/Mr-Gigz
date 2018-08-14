const scrollButtonMap = () => {

	 $(function() {
    $('.scroll-down-map').click (function() {
      $('html, body').animate({scrollTop: $('section.home-gigs-map').offset().top }, 'slow');
      return false;
    });
  });
}

module.exports = (scrollButtonMap);