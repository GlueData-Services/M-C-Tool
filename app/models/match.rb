class Match < ApplicationRecord
  audited

  has_many :matched_articles
  has_many :match_fields
  has_many :maras, through: :matched_articles

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
