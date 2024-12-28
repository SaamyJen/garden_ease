import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["popupMessage"]

  loading(event) {
    // const loadingPopup = this.popupMessageTarget;
    // console.log(this.popupMessageTarget)
    const form = document.querySelector("#location-form");
    const locationTitle = document.querySelector("#location-title");
    const popUp = document.querySelector(".flex-popup");
    form.classList.add("hidden");
    locationTitle.classList.add("hidden");
    // this.popupMessageTarget.classList.remove("hidden");
    document.body.classList.add("overflow-hidden");
    popUp.classList.remove("hidden");
  }
}
