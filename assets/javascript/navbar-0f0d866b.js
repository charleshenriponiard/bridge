var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
  var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.querySelector(".navbar-wagon").style.top = "0";
  } else {
    document.querySelector(".navbar-wagon").style.top = "-150px";
  }
  prevScrollpos = currentScrollPos;
};
