import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [
    "selectedValue",
    "selectedMara",
    "overriddenMara",
    "overrideInput",
  ];

  select(event) {
    if (!event.params.selectable) {
      return;
    }

    $(this.element)
      .find("td")
      .each(function (i, el) {
        $(el).removeClass("mara-selected");
      });
    // $(event.target).addClass('mara-selected');
    event.target.closest("td").classList.add("mara-selected");

    this.selectedValueTarget.value = event.params.value;
    this.selectedMaraTarget.value = event.params.mara;
    this.selectedMaraTarget.disabled = false;

    event = this.dispatch("select");
  }

  override(event) {
    this.overrideInputTarget.disabled = !event.target.checked;
    this.selectedMaraTarget.disabled = event.target.checked;

    if (event.target.checked) {
      this.overrideInputTarget.classList.remove("d-none");
      this.selectedValueTarget.classList.add("d-none");
    } else {
      this.overrideInputTarget.classList.add("d-none");
      this.selectedValueTarget.classList.remove("d-none");
    }
  }
}
