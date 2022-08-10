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

})

