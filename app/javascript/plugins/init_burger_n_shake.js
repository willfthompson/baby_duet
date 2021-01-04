const initBurgerNShake = () => {
  const navbar = document.querySelector(".navbar")
  const burger = document.querySelector("#burger");
  burger.addEventListener("click", (e) => {
    const shake = document.querySelector("#shake");
    if(shake.classList.contains("shake-active")){
      shake.classList.remove("shake-active");
      shake.classList.add("shake-mini");
      navbar.style.borderRadius = "0px 0px 20px 20px";
      burger.classList.remove("rotate");

    } else {
      shake.classList.remove("shake-mini");
      shake.classList.add("shake-active");
      navbar.style.borderRadius = "0px 0px 0px 20px";
      burger.classList.add("rotate");

    }
  });
};

export { initBurgerNShake };
