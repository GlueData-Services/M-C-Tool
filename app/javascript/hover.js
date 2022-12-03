$(document).on("turbo:load", function () {
  $(".barcode").hover(
    function () {
      let code_class = ".barcode-" + $(this).data("barcode");
      $(code_class).addClass("active-code");
    },
    function () {
      let code_class = ".barcode-" + $(this).data("barcode");
      $(code_class).removeClass("active-code");
    }
  );

  $(".variant").hover(
    function () {
      let currVal = $(this).data("value");
      $("." + currVal).addClass("active-code");
    },
    function () {
      $(".variant").removeClass("active-code");
    }
  );
});
