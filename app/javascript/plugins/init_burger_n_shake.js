const initBurgerNShake = () => {

  const burger = document.querySelector("#burger");
  burger.addEventListener("click", (e) => {
    console.log("click");
    const shake = document.querySelector("#shake");

    if(shake.classList.contains("shake-active")){
      shake.classList.remove("shake-active");
      shake.classList.add("shake-mini");
    } else {
      shake.classList.remove("shake-mini");
      shake.classList.add("shake-active");
    }
  });
};

export { initBurgerNShake };
