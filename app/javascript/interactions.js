$(document).on('turbo:load', function(){
   // $('table').bootstrapTable();
   // $("table").resizableColumns();

   var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
   var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl)
   })

   $(".barcode").hover(function(e){
      let code_class = ".barcode-" + $(this).data('barcode');
      $(code_class).addClass('active-code');
   }, function(e){
      let code_class = ".barcode-" + $(this).data('barcode');
      $(code_class).removeClass('active-code');
   });

   const tabs = document.querySelectorAll('[data-bs-toggle="tab"]')
   tabs.forEach(el => {
      el.addEventListener('shown.bs.tab', event => {
         sessionStorage.setItem('openTab', el.dataset.bsTarget)
      })
   })

   let el = $(`[data-bs-target="${sessionStorage.getItem('openTab')}"]`)[0]
   if (el) {
      bootstrap.Tab.getOrCreateInstance(el).show()
   } else if (tabs[0]) {
      bootstrap.Tab.getOrCreateInstance(tabs[0]).show()
   }

   const triggerTabList = document.querySelectorAll('#myTab button')
   triggerTabList.forEach(triggerEl => {
      const tabTrigger = new bootstrap.Tab(triggerEl)

      triggerEl.addEventListener('click', event => {
         event.preventDefault()
         tabTrigger.show()
      })
   })
})

