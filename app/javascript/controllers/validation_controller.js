import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  checkComplete() {
    let complete = true;

    $(".selectable").each(function (i, el) {
      let rowHasOptions = false;
      let rowHasValue = false;

      $(el)
        .find(".mara-data")
        .each(function (j, iel) {
          if ($(iel).text().trim() !== "") {
            rowHasOptions = true;
          }
        });

      $(el)
        .find(".match-mara-value")
        .each(function (j, iel) {
          if (iel.value === null || iel.value === "") {
            // Do not uncomment unless you remember why this is commented
            // rowHasValue = false;
          } else {
            rowHasValue = true;
          }
        });

      if (rowHasOptions && !rowHasValue) {
        complete = false;
      }
    });

    if (!complete) {
      // Disable the Save button
      $("button.btn-save").each(function (j, iel) {
        iel.disabled = true;
      });
    } else {
      // Enable the Save button
      $("button.btn-save").each(function (j, iel) {
        $(iel).attr("disabled", false);
      });
    }
  }
}
