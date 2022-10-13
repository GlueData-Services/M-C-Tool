done = 0
MatchedArticle.all.each do |ma|
  ma.mara.update(matched: true)
  done += 1

  puts done if done % 100 == 0
end
