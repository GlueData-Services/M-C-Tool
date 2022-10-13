class MarkProblems
  include Interactor

  def call
    match = context.match

    Match.transaction do
      context.problems.each do |prefixed_matnr, problems|
        ma = match.matched_articles.find_by(prefixed_matnr: prefixed_matnr)
        ma.update(problems)
        ma.touch(:reported_at)
      end

      match.update(status: 'error')
    end

  end
end
