function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-brand');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-brand-dark');
      } else {
        navbar.classList.remove('navbar-brand-dark');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
