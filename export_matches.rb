require './config/environment'

CSV.open("./matches.csv", "wb", quote_char: '"', col_sep: ', ') do |csv|
  # csv << ["row", "of", "CSV", "data"]
  # csv << ["another", "row"]
  # ...
  csv << ["match_id", "prefixed_matnr", "description", "barcodes"]
  Match.all.each do |match|
    match.matched_articles.each do |ma|
      mara = Mara.where(prefixed_matnr: ma.prefixed_matnr).first
      csv << [match.id, ma.prefixed_matnr, mara.description, mara.barcodes]
    end
  end

end

