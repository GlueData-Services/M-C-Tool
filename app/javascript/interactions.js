$(document).on("turbo:load", function () {
  // $('table').bootstrapTable();
  // $("table").resizableColumns();

  var tooltipTriggerList = [].slice.call(
    document.querySelectorAll('[data-bs-toggle="tooltip"]')
  );
  var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl);
  });

  $(".barcode").hover(
    function (e) {
      let code_class = ".barcode-" + $(this).data("barcode");
      $(code_class).addClass("active-code");
    },
    function (e) {
      let code_class = ".barcode-" + $(this).data("barcode");
      $(code_class).removeClass("active-code");
    }
  );

  $(".variant").hover(
    function (e) {
      let currVal = $(this).data("value");
      $("." + currVal).addClass("active-code");
    },
    function (e) {
      let currVal = $(this).data("val");
      $(".variant").removeClass("active-code");
    }
  );

  /*
                  Handle quick buttons for setting variation position
                   */
  $(".var_plus").click(function (e) {
    e.preventDefault();

    let max = getMaxPosition();
    console.log("Max", max);
    if (max === 0) {
      max = 1;
    }

    $(this).parent().find(".position").val(max);
  });

  $(".var_plus_one").click(function (e) {
    e.preventDefault();

    let max = getMaxPosition();
    if (max === 0) {
      max = 1;
    } else {
      max += 1;
    }
    $(this).parent().find(".position").val(max);
  });

  function getMaxPosition() {
    let max = 0;
    $(".position").each(function (e, el) {
      if (Number(el.value) > max) {
        max = Number(el.value);
      }
    });
    return max;
  }

  /*
                  END Handle quick buttons for setting variation position
                   */

  const tabs = document.querySelectorAll('[data-bs-toggle="tab"]');
  tabs.forEach((el) => {
    el.addEventListener("shown.bs.tab", (event) => {
      sessionStorage.setItem("openTab", el.dataset.bsTarget);
    });
  });

  let el = $(`[data-bs-target="${sessionStorage.getItem("openTab")}"]`)[0];
  if (el) {
    bootstrap.Tab.getOrCreateInstance(el).show();
  } else if (tabs[0]) {
    bootstrap.Tab.getOrCreateInstance(tabs[0]).show();
  }

  const triggerTabList = document.querySelectorAll("#myTab button");
  triggerTabList.forEach((triggerEl) => {
    const tabTrigger = new bootstrap.Tab(triggerEl);

    triggerEl.addEventListener("click", (event) => {
      event.preventDefault();
      tabTrigger.show();
    });
  });
});
