 
const scrollButton = () => {

	 $(function() {
    $('.scroll-down').click (function() {
      $('html, body').animate({scrollTop: $('section.last-gigs').offset().top }, 'slow');
      return false;
    });
  });
}

module.exports = (scrollButton);