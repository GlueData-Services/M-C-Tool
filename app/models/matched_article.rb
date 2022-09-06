class MatchedArticle < ApplicationRecord
  belongs_to :match
  belongs_to :mara, foreign_key: :prefixed_matnr, primary_key: :prefixed_matnr
end
