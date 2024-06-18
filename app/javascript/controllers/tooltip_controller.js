// app/javascript/controllers/tooltip_controller.js
import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    this.element.addEventListener('click', () => {
      const tooltip = this.element.querySelector('.tooltiptext')
      if (tooltip.style.visibility === 'hidden' || tooltip.style.visibility === '') {
        tooltip.style.visibility = 'visible'
        tooltip.style.opacity = '1'
      } else {
        tooltip.style.visibility = 'hidden'
        tooltip.style.opacity = '0'
      }
    })
  }
}
