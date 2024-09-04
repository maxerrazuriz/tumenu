import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-cal"
export default class extends Controller {
  static targets = ["toggledElement"]

  connect() {
    console.log("works")
  }

  dissapear() {
    this.toggledElementTarget.classList.toggle("d-none");
  }
}
