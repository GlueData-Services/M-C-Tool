class Match < ApplicationRecord
  audited

  has_many :match_fields, dependent: :destroy
  has_many :match_units, dependent: :destroy
  has_many :match_taxes, dependent: :destroy
  has_many :match_characteristics, dependent: :destroy
  has_many :match_classes, dependent: :destroy
  has_many :match_variants, dependent: :destroy
  has_many :matched_articles, dependent: :destroy

  has_many :maras, -> { order('banner') }, through: :matched_articles
  has_many :match_fields

  has_many :comments, as: :commentable

  scope :awaiting, -> { where(status: :awaiting) }
  scope :in_progress, -> { where(status: :in_progress) }
  scope :remediated, -> { where(status: :remediated) }
  scope :incomplete, -> { Match.awaiting.or(Match.in_progress).or(Match.remediated) }
  scope :complete, -> { where(status: :complete) }
  scope :in_error, -> { where(status: [:error, :awaiting_external]) }
  scope :mara_groups, ->(group) { joins(:maras).where(maras: { group: group }) }
  scope :has_error, ->(err) { joins(:matched_articles).where(matched_articles: { err => true }) }

  scope :single, -> { where(matched_articles_count: 1) }
  scope :double, -> { where(matched_articles_count: 2) }
  scope :triple, -> { where(matched_articles_count: 3) }

  def earliest_report
    matched_articles.minimum(:reported_at)
  end

  def name
    if maras.where(banner: 'GAME').count > 0
      maras.where(banner: 'GAME').first.description
    else
      maras.first&.description
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

  def pass!
    update(review_status: :pass)
  end

  def fail!(user, comment)
    Match.transaction do
      update(review_status: :fail, status: :awaiting)
      comments.create(user: user, comment: comment)
    end
  end

  def awaiting_external!
    update(status: :awaiting_external)
  end

  def matches_for_banner(banner)
    maras.where(banner: banner).count
  end

  def main_for_banner(banner)
    matched_articles.joins(:mara).where(matchable_articles: { banner: banner }).any?(&:main?)
  end

  def problems
    problems = []
    matched_articles.each do |mart|
      Problems::PROBLEMS.each do |problem|
        if mart.send("#{problem.name}?")
          problems << { problem_type: problem.name, comment: mart.comment, matnr: mart.prefixed_matnr }
        end
      end
    end
    problems
  end
end
