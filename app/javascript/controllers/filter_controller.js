import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {

  changed(event) {
    let params = new URLSearchParams(document.location.search);
    params.set(event.target.name, event.target.value);
    window.location.search = params.toString()
  }
}
