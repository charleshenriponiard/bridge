import $ from "jquery";

$(function(){
  console.log("I'm working with jQuery!")
});


$(document).ready(function() {
 $('.js-scrollTo').on('click', function() { // Au clic sur un élément
   var page = $(this).attr('href'); // Page cible
   var speed = 1000; // Durée de l'animation (en ms)
   $('html, body').animate( { scrollTop: $(anchor_1).offset().top }, speed ); // Go
   return false;
 });
});
import "bootstrap";
import "all.scss";
import "navbar.js";



