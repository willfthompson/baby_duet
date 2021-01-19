
let w = window.innerWidth
|| document.documentElement.clientWidth
|| document.body.clientWidth;

  const initNavbar = () => {
    const banner = document.querySelector(".banner");
    const navbar = document.querySelector(".navbar");
    if(banner){
      if(document.documentElement.scrollTop < 10) {
        navbar.style.display = "none";
      } else {
        navbar.style.display = "flex";
      }
    } else {
      navbar.style.display = "flex";
    }
  };
  initNavbar()
  if(w >= 768){

  window.onscroll = function() {initNavbar()};
};
