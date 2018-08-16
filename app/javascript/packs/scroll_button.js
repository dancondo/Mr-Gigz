 const scrollButton = () => {

	 $(function() {
    $('.scroll-down').click (function() {
      $('html, body').animate({scrollTop: $('.home-cards-container').offset().top }, 'slow');
      return false;
    });
  });
}

module.exports = (scrollButton);
