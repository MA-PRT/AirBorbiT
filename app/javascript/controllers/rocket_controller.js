import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["rocket"];
  static targets = ["input"];

  animate(event) {
    event.preventDefault();

    console.log("Animation starting...");

    const rocket = document.getElementById("rocket");
    if (rocket) {
      rocket.classList.add("rocket-fly");

      setTimeout(() => {
        console.log("Submitting the form...");
        this.element.submit();
      }, 3000);
    }
  }
}
