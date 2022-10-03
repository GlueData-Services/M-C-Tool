module ValidationHelper

  def build_uom_field(key, record, highlight)
    return if ['matnr'].include? key

    content_tag :td do
      case key.upcase
      when 'ALT_UOM'
        content_tag(:span, record[key], data: {
          action: 'click->units#selectUnit',
          units_value_param: record[key],
          units_target: 'uomField'
        })
      when 'EAN'
        content_tag :span, record[key], data: {
          action: 'click->units#selectEan',
          units_value_param: record[key],
          units_target: 'eanField'
        }, class: "fw-bold #{'text-success' if highlight}", role: 'button'
      else
        record[key].to_s
      end
    end
  end

  def summarize_errors(match)
    errors = []
    match.matched_articles.each do |art|
      errors << content_tag(:span, "#{art.prefixed_matnr} DUPE", class: 'badge bg-danger') if art.duplicate?
      errors << content_tag(:span, "#{art.prefixed_matnr} BADCAT", class: 'badge bg-danger') if art.bad_category?
      errors << content_tag(:span, "#{art.prefixed_matnr} BADMAT", class: 'badge bg-danger') if art.bad_material?
      errors << content_tag(:span, "#{art.prefixed_matnr} UOM", class: 'badge bg-danger') if art.uom_mismatch?
    end
    errors.join(' ').html_safe
  end
end
