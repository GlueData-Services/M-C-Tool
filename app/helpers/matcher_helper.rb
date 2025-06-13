module MatcherHelper
  def banner(code)
    case code.upcase
    when 'G'
      return 'Bit'
    when 'M'
      return 'Ec'
    when 'B'
      return 'Wc'
    else
      return code
    end
  end

  def rank_score(score)
    case score
    when 0..399
      return content_tag :span, 'Low', title: score
    when 401..999
      return content_tag :span, 'Med', title: score
    when 1000..100000
      return content_tag :span, 'High', title: score
    else
      return 'Unk'
    end
  end

  def match_codes(all_codes, highlights)
    return if all_codes.nil?
    hl_codes = highlights.gsub(/<[\/]?strong>/, " ").split(/[\s,]+/)
    all_codes.split(",").map do |code|
      code.strip!
      if code.in? hl_codes
        content_tag :strong, code, class: "barcode barcode-#{code}", data: { barcode: code }
      else
        content_tag :span, code, class: "barcode barcode-#{code}", data: { barcode: code }
      end
    end.join(", ").html_safe
  end

  def batch_filter_options(current_batch, include_default = true)

    batches = Mara.pluck(:batch).uniq.compact.sort

    opts = include_default ? [["Batch", nil]] : []
    options_for_select(opts + batches.zip(batches),
                       current_batch.present? ? current_batch : nil
    )
  end

  def batch_completion_date(batch)
    Mara.where(batch: batch).maximum(:batch_completion_date).strftime("%F") rescue '2042-12-25'
  end
end
