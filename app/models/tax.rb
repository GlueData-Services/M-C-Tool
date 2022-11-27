class Tax
  attr_accessor :match, :lookup

  def initialize(match_id)
    @match = Match.find(match_id)
    @lookup = Lookup.tax_fields
  end

end