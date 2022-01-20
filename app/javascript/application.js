// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


window.hiddendivfortime = function() {
  if  (document.querySelector('input[name="visitor[visitor_type]"]:checked').value == "3")
  document.getElementById("visitor_expires_div").style.display = "block";
  else
  document.getElementById("visitor_expires_div").style.display = "none";
}




