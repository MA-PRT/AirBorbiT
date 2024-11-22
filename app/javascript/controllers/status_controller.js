import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="status"
export default class extends Controller {
  static targets = ['currentstatus', 'divbutton']

  connect() {
    console.log(this.currentstatusTarget.textContent.slice(9))
  }

  // accept (event) {
  //   event.preventDefault();

  //   const currentStatus = this.currentstatusTarget;
  //   console.log(currentStatus);
  //   // currentStatus.innerText = 'Status : accepted';
  //   this.divbuttonTarget.classList.add("d-none");
  // }

  // reject (event) {
  //   event.preventDefault();

  //   const currentStatus = this.currentstatusTarget;
  //   console.log(currentStatus);
  //   // currentStatus.innerText = 'Status : rejected';
  //   this.divbuttonTarget.classList.add("d-none");
  // }
}
