class Match < ApplicationRecord
  audited

  has_many :match_fields, dependent: :destroy
  has_many :match_units, dependent: :destroy
  has_many :matched_articles, dependent: :destroy
  has_many :maras, through: :matched_articles

  scope :awaiting, -> { where(status: :awaiting) }
  scope :in_progress, -> { where(status: :in_progress) }
  scope :incomplete, -> { Match.awaiting.or(Match.in_progress) }
  scope :complete, -> { where(status: :complete) }
  scope :in_error, -> { where(status: :error) }
  scope :mara_groups, ->(group) { joins(:maras).where(maras: { group: group }) }
  scope :has_error, ->(err) { joins(:matched_articles).where(matched_articles: {err => true}) }

  def earliest_report
     matched_articles.minimum(:reported_at)
  end

  def name
    if maras.where(banner: 'GAME').count > 0
      return maras.where(banner: 'GAME').first.description
    else
      return maras.first&.description
    end
  end

  def article_type
    if maras.where(banner: 'GAME').count > 0
      maras.where(banner: 'GAME').first.article_type
    else
      maras.first&.article_type
    end
  end

  def matched_articles_count
    matched_articles.count
  end
end
