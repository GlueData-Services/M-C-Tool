module MatcherHelper
  def banner(code)
    case code.upcase
    when 'G'
      return 'Game'
    when 'M'
      return 'Makro'
    when 'B'
      return 'Builders'
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
end
