function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-brand-dark');
        navbar.classList.add('navbar-brand-logo');
      } else {
        navbar.classList.remove('navbar-brand-dark');
        navbar.classList.remove('navbar-brand-logo');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
