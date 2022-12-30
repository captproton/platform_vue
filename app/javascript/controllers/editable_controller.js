import { Controller } from "@hotwired/stimulus"
import debounce from "lodash.debounce"

export default class extends Controller {
  static targets = ["content", "input"]

  changed = debounce(() =>{
    console.log("something changed")
    this.inputTarget.value = this.contentTarget.innerHTML
    this.inputTarget.form.requestSubmit()
  }, 1000)
}

    // static targets = ["content", "input"]

    // changed = debounced(() => {
    //     // this.element.dataset.changed = "true"
    //     this.inputTarget.value = this.contentTarget.innerHTML
    //     this.inputTarget.form.requestSubmit()
    // }, 200)
