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

  def summarize_notes(match)
    notes = []
    match.matched_articles.each do |art|
      notes << content_tag(:span, art.comment)
    end
    notes.join(' ').html_safe
  end

  def units_of_measure_options(with_description: false)
    measures = {
      'EA': 'Each', 'KG': 'Kilogram', 'L': 'Liter', 'M': 'Meter', 'M2': 'Square Meter', 'M3': 'Cubic Meter', 'TON': 'Tonne',
      'PAK': 'Pack', 'PK1': 'Pack 1', 'PK2': 'Pack 2', 'CAR': 'Carton', 'CR1': 'Carton 1', 'CR2': 'Carton 2',
      'CS': 'Case', 'CS1': 'Case 1', 'CS2': 'Case 2', 'ROL': 'Roll',
      'LAY': 'Layer',
      'PAL': 'Pallet'
    }

    if with_description
      options_for_select(measures.map { |k, v| ["#{k} - #{v}", k] })
    else
      options_for_select(measures.keys)
    end
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

  def review_badge(review_status)
    case review_status&.upcase
    when 'PASS'
      content_tag(:span, review_status, class: 'badge bg-success text-uppercase')
    when 'FAIL'
      content_tag(:span, review_status, class: 'badge bg-danger text-uppercase')
    else
      content_tag(:span, review_status, class: 'badge bg-warning text-uppercase')
    end
  end

  def status_badge(status)
    case status&.upcase
    when 'AWAITING'
      content_tag(:span, status, class: 'badge bg-warning text-uppercase')
    when 'ERROR'
      content_tag(:span, status, class: 'badge bg-danger text-uppercase')
    when 'AWAITING_EXTERNAL'
      content_tag(:span, status.humanize, class: 'badge bg-warning text-uppercase')
    else
      content_tag(:span, status, class: 'badge bg-warning text-uppercase')
    end
  end

  def skip_article?(match, article)
    return false if match.matches_for_banner(article.banner) < 2

    return false unless match.main_for_banner(article.banner)

    # There IS more than 1 match, and there IS a "main" article
    !match.matched_articles.where(prefixed_matnr: article.prefixed_matnr).first.main?
  end

  def get_consolidated_value(mf, vals)
    if mf.present?
      mf.get_value
    else
      vals.uniq.length == 1 ? vals[0] : ''
    end
  end

  def get_consolidated_id(mf, vals, mara_id)
    if mf.present?
      mf.mara_id
    else
      vals.compact.uniq.length == 1 ? mara_id : nil
    end
  end
end
