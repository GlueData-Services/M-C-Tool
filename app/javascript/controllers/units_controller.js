import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [
    "ean",
    "unit",
    "matnr",
    "eanField",
    "uomField",
    "overrideUnit",
  ];

  connect() {
    this.checkUnits();
  }

  checkUnits() {
    const valid = ["EA", "PAK", "CAR", "CS", "LAY", "PAL"];
    if (!valid.includes(this.unitTarget.value)) {
      this.unitTarget.classList.add("text-danger");
    } else {
      this.unitTarget.classList.remove("text-danger");
    }
  }

  selectEan(event) {
    this.eanTarget.value = event.params.value;
    this.eanFieldTargets.forEach(function (el) {
      el.classList.remove("text-success");
    });
    event.target.classList.add("text-success");
  }

  selectUnit(event) {
    this.unitTarget.value = event.params.value;
    this.uomFieldTargets.forEach(function (el) {
      el.classList.remove("text-success", "fw-bold");
    });
    this.checkUnits();

    event.target.classList.add("text-success", "fw-bold");
  }

  selectRecord(event) {
    this.matnrTarget.value = event.params.value;
    this.unitTarget.value = event.params.unit;
    if (event.params.ean) {
      this.eanTarget.value = event.params.ean;
    }
    this.checkUnits();
  }

  toggleUnitsOverride(event) {
    if (event.target.checked) {
      this.unitTarget.disabled = true;
      this.overrideUnitTarget.disabled = false;
      this.overrideUnitTarget.classList.remove("d-none");
    } else {
      this.unitTarget.disabled = false;
      this.overrideUnitTarget.disabled = true;
      this.overrideUnitTarget.classList.add("d-none");
    }
  }
}
