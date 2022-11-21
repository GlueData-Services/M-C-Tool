class MatchedArticle < ApplicationRecord
  audited
  belongs_to :match, counter_cache: true
  belongs_to :mara, foreign_key: :prefixed_matnr, primary_key: :prefixed_matnr

  has_many :comments, as: :commentable
end
