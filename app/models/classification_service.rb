class ClassificationService
  attr_reader :match, :classifications

  def initialize(match_id)
    @match = Match.find(match_id)

    @classifications = []

    @match.maras.each do |mara|
      rows = get_classifications(mara)
      article = { article: mara.id }
      rows.each do |r|
        @classifications << article.merge(r).with_indifferent_access
      end
    end
  end

  private

  def get_classifications(mara)
    table = "#{mara.banner[0].downcase}_basic_char"
    fields = %w[MATNR ATNAM ATWRT].join(', ')
    res = ActiveRecord::Base.connection.exec_query("SELECT UNIQUE #{fields} FROM #{table} WHERE MATNR = '#{mara.matnr}'")
    res.to_a
  end
end