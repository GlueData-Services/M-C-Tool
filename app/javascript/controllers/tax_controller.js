import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["taxClass", "taxTable"]

    selectTaxClass(event) {
        let checked = event.target.checked

        // Disable all inputs for the country, then enable the ones handled by this controller
        $("." + event.params.country).attr('disabled', 'disabled')

        // This may be in the top 10 worst things I have ever done, but it is late and I am tired.
        // And we can never forget, if its stupid but it works, then its not stupid
        $("." + event.params.country + '-checkbox').prop('checked', false)
        event.target.checked = checked

        let selected = !event.target.checked
        this.taxClassTarget.disabled = selected
        this.taxTableTarget.disabled = selected
    }
}
