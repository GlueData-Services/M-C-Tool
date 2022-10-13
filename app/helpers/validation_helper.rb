module ValidationHelper

  def build_uom_field(key, record, highlight)
    return if ['matnr'].include? key

    content_tag :td do
      case key.upcase
      when 'ALT_UOM'
        content_tag(:span, record[key], class: "fw-bold #{'text-success' if highlight}", role: 'button',
                    data: {
                      action: 'click->units#selectUnit',
                      units_value_param: record[key],
                      units_target: 'uomField',

                    })
      when 'EAN'
        content_tag :span, record[key], class: "fw-bold #{'text-success' if highlight}", role: 'button',
                    data: {
                      action: 'click->units#selectEan',
                      units_value_param: record[key],
                      units_target: 'eanField'
                    }
      else
        record[key].to_s
      end
    end
  end

  def summarize_errors(match)
    errors = []
    css_class = "badge bg-light text-dark border-0 border-dark"
    match.matched_articles.each do |art|
      errors << content_tag(:span, "#{art.prefixed_matnr} DUPE", class: css_class) if art.duplicate?
      errors << content_tag(:span, "#{art.prefixed_matnr} BADCAT", class: css_class) if art.bad_category?
      errors << content_tag(:span, "#{art.prefixed_matnr} BADMAT", class: css_class) if art.bad_material?
      errors << content_tag(:span, "#{art.prefixed_matnr} UOM", class: css_class) if art.uom_mismatch?
      errors << content_tag(:span, "#{art.prefixed_matnr} UOMREV", class: css_class) if art.uom_review?
      errors << content_tag(:span, "#{art.prefixed_matnr} TAXDIFF", class: css_class) if art.tax_diff?
    end
    errors.join(' ').html_safe
  end

  def summarize_notes(match)
    notes = []
    match.matched_articles.each do |art|
      notes << content_tag(:span, art.comment)
    end
    notes.join(' ').html_safe
  end

  def error_filter_select
    opts = [
      ['Bad Category', 'bad_category'],
      ['UoM Mismatch', 'uom_mismatch'],
      ['Bad Material', 'bad_material'],
      ['Duplicate', 'duplicate'],
      ['Tax Difference', 'tax_diff'],
      ['AUoM Review', 'uom_review'],
    ]
    select_tag(:error_filter,
               options_for_select(opts, params[:error_filter]),
               include_blank: true,
               prompt: 'Error Filter',
               class: 'form-select',
               data: {
                 controller: 'filter',
                 action: 'filter#changed'
               })
  end
end
