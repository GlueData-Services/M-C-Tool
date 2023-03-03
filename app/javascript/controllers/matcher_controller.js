import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="matcher"
export default class extends Controller {
  refine(event) {
    let location =
      "/matcher?q=" +
      event.params.ean11 +
      " " +
      event.params.description +
      "&n_page=" +
      event.params.npage +
      "&match_q=" +
      event.params.matchq +
      "&f_banner=" +
      event.params.fBanner +
      "&f_group=" +
      event.params.fGroup +
      "&f_batch=" +
      event.params.fBatch +
      "&f_article_type=" +
      event.params.fArticleType;

    Turbo.visit(location);
  }
}
