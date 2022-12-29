import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element = "Hello Editible!"
  }
}

    // static targets = ["content", "input"]

    // changed = debounced(() => {
    //     // this.element.dataset.changed = "true"
    //     this.inputTarget.value = this.contentTarget.innerHTML
    //     this.inputTarget.form.requestSubmit()
    // }, 200)
