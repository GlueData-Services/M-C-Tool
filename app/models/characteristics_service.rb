class CharacteristicsService
  attr_reader :match, :lookup, :characters

  def initialize(match_id)
    @match = Match.find(match_id)
    @lookup = Lookup.where(tab: 'Info_Characteristics')

    @characters = []

    @match.maras.each do |mara|
      rows = get_characters(mara)
      article = { article: mara.id }
      rows.each do |r|
        @characters << article.merge(r).with_indifferent_access
      end
    end
  end

  private

  def get_characters(mara)
    table = "#{mara.banner[0].downcase}_other_char"
    fields = %w[MATNR ATNAM ATWRT].join(', ')

    res = ActiveRecord::Base.connection.exec_query("SELECT UNIQUE #{fields} FROM #{table} WHERE MATNR = '#{mara.matnr}'")
    res.to_a
  end
end