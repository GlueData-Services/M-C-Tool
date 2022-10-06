class DissolveMatch
  include Interactor

  def call
    match = Match.find(context.match_id)

    Match.transaction do
      match.maras.update(matched: false)
      match.destroy
    end
  end
end
