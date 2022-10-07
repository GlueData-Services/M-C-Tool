import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  connect() {
  }

  changed(event) {
    Turbo.visit('/consolidate' + `?incomplete[group_filter]=${event.target.value}`)
  }
}
