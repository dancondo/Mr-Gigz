const scrollButtonAboutUS = () => {

	 $(function() {
    $('.scroll-down-about').click (function() {
      $('html, body').animate({scrollTop: $('footer').offset().top }, 'slow');
      return false;
    });
  });
}

module.exports = (scrollButtonAboutUS);