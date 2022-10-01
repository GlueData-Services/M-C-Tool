module ValidationHelper

  def build_uom_field(key, record)
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
        }, class: "fw-bold", role: 'button'
      else
        record[key].to_s
      end
    end
  end
end
