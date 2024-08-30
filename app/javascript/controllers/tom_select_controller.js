import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tom-select"
export default class extends Controller {
  connect() {
    console.log("Hello, Tom")
    new TomSelect(this.element, {})
  }

}
