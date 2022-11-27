import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["atnam", "atwrt"]

    selectRecord(event) {
        if (event.target.checked) {
            this.atnamTarget.value = event.params.atnam
            this.atwrtTarget.value = event.params.atwrt
        } else {
            this.atnamTarget.value = ''
            this.atwrtTarget.value = ''
        }
    }
}
