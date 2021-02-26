
let w = window.innerWidth
|| document.documentElement.clientWidth
|| document.body.clientWidth;

  const initNavbar = () => {
    const navbar = document.querySelector(".navbar");
       if(document.documentElement.scrollTop <= 10) {
        navbar.classList.remove("scrolled");
      } else {
        navbar.classList.add("scrolled");
      }
    };
export { initNavbar };

  initNavbar()
  window.onscroll = function() {initNavbar()};

