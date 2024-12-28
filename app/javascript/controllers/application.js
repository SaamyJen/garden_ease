import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

const savedBtn = document.querySelector("#saved-btn")

// if (savedBtn) {
//   savedBtn.addEventListener("click", () => {
//     savedBtn.style.display = "none";
//     savedBtn.classList.remove = "button-purple";
//   })
// }

// const growingPlants = document.querySelectorAll(".growing");

// growingPlants.forEach( plant => {
//   plant.addEventListener("animationend"), {
//     plant.classList.add("leaf-animation");
//   }});

export { application }
