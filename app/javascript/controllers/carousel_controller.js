import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["carousel", "left", "right"]



  left(e) {
    console.log('here')

    this.carouselTarget.scrollTo({
      left: this.carouselTarget.scrollLeft - 390,
      behavior:"smooth",
    }
    )
  }

  right(e) {
    this.carouselTarget.scrollTo({
      left: this.carouselTarget.scrollLeft + 390,
      behavior:"smooth",
    }
    )
  }

}
