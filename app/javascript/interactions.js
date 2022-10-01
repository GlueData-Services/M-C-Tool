$(document).on('turbo:load', function(){
   // $('table').bootstrapTable();
   // $("table").resizableColumns();

   // var triggerTabList = [].slice.call(document.querySelectorAll('#tab-consolidation a'))
   // triggerTabList.forEach(function (triggerEl) {
   //    var tabTrigger = new bootstrap.Tab(triggerEl)
   //
   //    triggerEl.addEventListener('click', function (event) {
   //       event.preventDefault()
   //       tabTrigger.show()
   //    })
   // })

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

