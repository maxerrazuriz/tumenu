import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {


  connect() {

  }

  reveal(event){
    const active_object = document.querySelector(".active")
    active_object.classList.toggle("active")
    const active_object2 = document.querySelector(".blanc")
    active_object2.classList.toggle("blanc")
    const object = document.querySelectorAll(`[data-id="${event.target.dataset.id}"]`)
    object[1].classList.toggle("active")
    object[0].classList.toggle("blanc")
  }

}
