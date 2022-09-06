import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["selectedValue", "selectedMara", "overriddenMara"]

    select(event) {
        $(this.element).find('td').each(function(i, el){
            $(el).removeClass('mara-selected');
        })
        $(event.target).addClass('mara-selected');

        this.selectedValueTarget.value = event.params.value;
        this.selectedMaraTarget.value = event.params.mara;
        this.overriddenMaraTarget.disabled = true;
    }
}
