import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ['input', 'output']
  static values = {
    price: Number
  }

  connect() {
    flatpickr(this.inputTarget, {
      mode: "range",
      dateFormat: "Y-m-d",
    });
  }

  checkDateRange() {
    const dateRange = this.inputTarget.value;
    const priceFromDom = this.element.dataset.priceValue;

    if (dateRange.includes("to")) {
      const startDate = new Date(dateRange.substring(0, 10));
      const endDate = new Date(dateRange.substring(14, 24));
      const range = ((endDate - startDate) / (1000 * 60 * 60 * 24));

      const pricePerDay = parseFloat(priceFromDom);
      const totalPrice = pricePerDay * range;

      console.log("total price: ", totalPrice)
      this.outputTarget.textContent = `${totalPrice.toFixed(2)}M $`;
    }
  }

}
