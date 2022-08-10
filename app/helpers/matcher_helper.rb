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
end
