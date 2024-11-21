import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ['input', 'output', 'pricing']
  static values = {
    price:String
  }

  connect() {
    flatpickr(this.inputTarget, {
      mode: "range",
      dateFormat: "Y-m-d",
    });
    console.log(this.priceValue);
    
  }

  checkDateRange() {
    const dateRange = this.inputTarget.value;
    console.log(dateRange)


    if (dateRange.includes("to")) {
      const startDate = new Date(dateRange.substring(0, 10));
      const endDate = new Date(dateRange.substring(14, 24));
      const range = ((endDate - startDate) / (1000 * 60 * 60 * 24));

      const pricePerDay = parseFloat(this.priceValue);
      const totalPrice = pricePerDay * range;

      console.log(this.priceValue);

      console.log("price per day", pricePerDay);
      console.log("totalPrice", totalPrice);

      console.log(totalPrice)
      this.outputTarget.textContent = `${totalPrice.toFixed(2)}$`;
    }
  }

}
