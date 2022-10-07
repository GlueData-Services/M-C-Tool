import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  changed(event) {
    if (event.target.value === "") {
      Turbo.visit(window.location.pathname)
    } else {
      Turbo.visit(window.location.pathname + '?' + `${event.target.name}=${event.target.value}`)
    }
  }
}
