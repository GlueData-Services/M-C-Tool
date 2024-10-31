import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["comment"]

    post(event) {
        let csrf = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

        fetch(event.params.url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-Token': csrf
            },
            body: JSON.stringify({ "comment": this.comment})
        })
            .then(response => response.text())
            .then(html => Turbo.renderStreamMessage(html))
            // {
            //     console.log(response)
            //     // Turbo.renderStreamMessage(html)
            // })
    }

    get comment() {
        return this.commentTarget.value
    }
}