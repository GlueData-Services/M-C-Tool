import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="matcher"
export default class extends Controller {
  connect() {
    console.log('Connected')
  }

  refine(event) {
    console.log('Refining...');
    console.log(event.params);
    let location = "/matcher?q=" + event.params.ean11 + " " + event.params.description + "&n_page=" + event.params.npage;
    Turbo.visit(location)
  }
}
