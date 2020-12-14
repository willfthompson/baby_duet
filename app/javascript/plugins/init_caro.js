const initCaro = () => {
  // Whole thing needs to be inside an if > length 1
  const next = document.querySelector("#caro-next-but");
  const prev = document.querySelector("#caro-prev-but");
  const caro = document.querySelectorAll(".caro-item")

  if(caro.length > 1){
    let i = 0;
    let n = 0;
    let p = 0;

    p = (caro.length-1);
    caro[p].classList.add("prev");

    n = i+1;
    caro[n].classList.add("next")

    next.addEventListener("click", (e) => {
      caro[i].classList.remove("active");
      caro[n].classList.remove("next");
      caro[p].classList.remove("prev");

      i < (caro.length -1) ? (i += 1) : (i = 0);
      n < (caro.length -1) ? (n += 1) : (n = 0);
      p < (caro.length -1) ? (p += 1) : (p = 0);

      caro[i].classList.add("active");
      caro[n].classList.add("next");
      caro[p].classList.add("prev");

    });

    prev.addEventListener("click", (e) => {
      caro[i].classList.remove("active");
      caro[n].classList.remove("next");
      caro[p].classList.remove("prev");

      i > (0) ? (i -= 1) : (i = (caro.length -1));
      n > (0) ? (n -= 1) : (n = (caro.length -1));
      p > (0) ? (p -= 1) : (p = (caro.length -1));

      caro[i].classList.add("active");
      caro[n].classList.add("next");
      caro[p].classList.add("prev");

    });
  }
};

export { initCaro };
