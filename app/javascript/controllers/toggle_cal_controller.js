import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-cal"
export default class extends Controller {
  static targets = ["toggled"]

  connect() {
    console.log("works")
  }

  dissapear() {
    this.togglableElementTarget.classList.toggle("d-none");
  }
}
