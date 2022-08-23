class Match < ApplicationRecord
  has_many :matched_articles
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
end
