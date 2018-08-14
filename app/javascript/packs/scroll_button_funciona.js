const scrollButtonFunciona = () => {

	 $(function() {
    $('.scroll-down-funciona').click (function() {
      $('html, body').animate({scrollTop: $('section.section-como-funciona').offset().top }, 'slow');
      return false;
    });
  });
}

module.exports = (scrollButtonFunciona);
