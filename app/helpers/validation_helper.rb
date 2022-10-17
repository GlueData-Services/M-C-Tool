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
    css_class = "badge bg-light text-dark border shadow-sm"

    match.matched_articles.each do |art|
      err = []

      [[:duplicate?, 'DUPE'], [:bad_category?, 'BADCAT'], [:bad_material?, 'BADMAT'], [:uom_mismatch?, 'UOM'], [:uom_review?, 'UOMREV'], [:tax_diff?, 'TAX']].each do |err_type|
        err << err_type[1] if art.send(err_type[0])
      end

      errors << content_tag(:span,
                            "#{art.prefixed_matnr} - #{err.join(' / ')}",
                            class: css_class
      ) if err.count > 0
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

  def match_count_select
    opts = [%w[1 1], %w[2 2], %w[3+ 3]]
    select_tag(:match_count_filter,
               options_for_select(opts, params[:match_count_filter]),
               include_blank: true,
               prompt: 'Match count filter',
               class: 'form-select',
               data: {
                 controller: 'filter',
                 action: 'filter#changed'
               })
  end
end
