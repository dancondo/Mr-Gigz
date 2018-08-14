function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-brand-dark');
        console.log('test');
      } else {
        navbar.classList.remove('navbar-brand-dark');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
