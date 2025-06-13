##
# Tax should be returned as a rate, mapped to all the matching countries
# eg
#   GAME  => [{ 1 => "ZA, ZM, NG" }, {5 => ["USA", "DE"]},
#   BUILD => [{ 2 => "ZA, ZM, NG" }, {7 => ["DE"]}]]
#
# Output:
#
class Tax
  attr_accessor :match, :lookup

  def initialize(match_id)
    @match = Match.find(match_id)
    @lookup = Lookup.tax_fields
  end

  def taxes
    taxes = {}
    @match.maras.each do |mara|
      taxes[mara.banner] = get_tax(mara)
    end
    taxes.delete_if{|_, v| v.empty? }
    taxes
  end

  def get_tax(mara)
    banner_prefix = mara.banner[0].downcase
    if mara.banner == 'BIT'
      banner_prefix = 'g'
    elsif mara.banner == 'EC'
      banner_prefix = 'm'
    elsif mara.banner == 'WC'
      banner_prefix = 'b'
    else
      banner_prefix = mara.banner[0].downcase
    end
    # table = "#{banner_prefix}_mlan"

    query = <<~SQL
      SELECT aland, taxm1, #{banner_prefix}_tskmt.`VTEXT`, "#{banner_prefix}_mlan" as "table", "#{mara.banner}" as "banner"
      FROM #{banner_prefix}_mlan
      JOIN #{banner_prefix}_tskmt ON #{banner_prefix}_tskmt.`TAXKM` = #{banner_prefix}_mlan.taxm1
      WHERE #{banner_prefix}_mlan.MATNR = '#{mara.matnr}'
    SQL

    res = ActiveRecord::Base.connection.exec_query(query)
    res.to_a
  end
end
