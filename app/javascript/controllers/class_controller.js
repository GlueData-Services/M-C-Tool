import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["atnam", "atwrt"]

    selectRecord(event) {
        if (event.target.checked) {
            this.atnamTarget.disabled = false
            this.atwrtTarget.disabled = false
            this.atnamTarget.value = event.params.atnam
            this.atwrtTarget.value = event.params.atwrt
        } else {
            this.atnamTarget.disabled = true
            this.atwrtTarget.disabled = true
            this.atnamTarget.value = ''
            this.atwrtTarget.value = ''
        }
    }
}
