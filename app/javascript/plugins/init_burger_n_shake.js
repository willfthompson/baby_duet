const initBurgerNShake = () => {
  const burger = document.querySelector("#burger");
  burger.addEventListener("click", (e) => {
    const shake = document.querySelector("#shake");
    if(shake.classList.contains("shake-active")){
      shake.classList.remove("shake-active");
      shake.classList.add("shake-mini");
      burger.classList.remove("rotate");

    } else {
      shake.classList.remove("shake-mini");
      shake.classList.add("shake-active");
      burger.classList.add("rotate");
    }
  });
};

export { initBurgerNShake };
