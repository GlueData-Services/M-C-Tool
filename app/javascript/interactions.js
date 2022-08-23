$(document).on('turbo:load', function(){
   $(".mara-data").on("click", function(e){
      $(this).parent().find(".mara-data").each(function(i, col){
         $(col).removeClass('mara-selected')
      })

      $(this).addClass('mara-selected')
   })

   $('.override').on("change", function(){
      console.log($(this))
      if(this.checked) {
         $(this).parent().find('.mara-input').removeClass('d-none')
      } else {
         $(this).parent().find('.mara-input').addClass('d-none')
      }
   })

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

   $("span.barcode").hover(function(){
      console.log($(this).data('barcode'))
      $($(this).data('barcode')).addClass('bg-selected')
   }, function(){
      console.log('out')
      $("tr").removeClass('bg-selected')
   });
})

