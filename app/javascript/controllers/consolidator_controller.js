import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["selectedValue"]

    select(event) {
        // console.log(this.element);
        // console.log(event)
        $(this.element).find('td').each(function(i, el){
            $(el).removeClass('mara-selected');
        })
        $(event.target).addClass('mara-selected');
        // event.target.classList.add('mara-selected');
        this.selectedValueTarget.value = event.params.value;
    }
}
