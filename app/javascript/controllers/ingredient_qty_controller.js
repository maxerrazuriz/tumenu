import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="ingredient-qty"
export default class extends Controller {

  static targets = ["ingredientInput", "below"]

  connect() {
    this.ingredientIndex = 1;
    console.log("Aqui estoy")
    this.ingredientInputTarget.classList.remove("d-none")
  }

  ingredient(event) {
    let ingredient = Array.from(this.ingredientInputTargets)[this.ingredientIndex]
    ingredient.classList.remove("d-none")
    this.ingredientIndex += 1;
  }
}
