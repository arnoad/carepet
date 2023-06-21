import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="disable-btn"
export default class extends Controller {
  static targets = ['btn']
  connect() {
    console.log('Disable btn connected')
  }

  disable(event) {
    console.log('updated disabled')
    this.btnTargets.forEach((btn) => {
      btn.setAttribute('disabled', true)
      btn.innerText = 'One moment...'
    })
  }
}
