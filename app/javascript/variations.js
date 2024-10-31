$(document).on("turbo:load", function () {
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
});
