import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["popupMessage"]

  loading(event) {
    const loadingPopup = this.popupMessageTarget;
    console.log(this.popupMessageTarget)
    loadingPopup.classList.add("show");
    document.body.classList.add("popup-open");
  }
}
