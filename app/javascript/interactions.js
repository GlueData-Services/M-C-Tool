$(document).on('turbo:load', function(){
   // $(".mara-data").on("click", function(e){
   //    $(this).parent().find(".mara-data").each(function(i, col){
   //       $(col).removeClass('mara-selected')
   //    })
   //
   //    $(this).addClass('mara-selected')
   // })

   // $('.match_select').on('change', function(e){
   //    console.log("Selected match", e, this.checked)
   //    if (this.checked) {
   //       $(this).closest('tr').addClass('selected_row')
   //    } else {
   //       $(this).closest('tr').removeClass('selected_row')
   //    }
   // });

   // $('.override').on("change", function(){
   //    if(this.checked) {
   //       $(this).parent().find('.mara-input').removeClass('d-none')
   //    } else {
   //       $(this).parent().find('.mara-input').addClass('d-none')
   //    }
   // })

   // $('table').bootstrapTable();
   $("table").resizableColumns();

   var triggerTabList = [].slice.call(document.querySelectorAll('#tab-consolidation a'))
   triggerTabList.forEach(function (triggerEl) {
      var tabTrigger = new bootstrap.Tab(triggerEl)

      triggerEl.addEventListener('click', function (event) {
         event.preventDefault()
         tabTrigger.show()
      })
   })

   var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
   var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl)
   })

   $(".barcode").hover(function(e){
      console.log('in');
      let code_class = ".barcode-" + $(this).data('barcode');
      $(code_class).addClass('active-code');
   }, function(e){
      let code_class = ".barcode-" + $(this).data('barcode');
      $(code_class).removeClass('active-code');
   });
})

