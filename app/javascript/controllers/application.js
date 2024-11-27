import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

document.addEventListener("DOMContentLoaded", function () {
  const form = document.getElementById("space-form");
  const popup = document.getElementById("popup1");

  form.addEventListener("submit", function () {
    popup.style.display = "block";
  });
});
