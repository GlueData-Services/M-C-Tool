class AddReviewStatusToMatches < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :review_status, :string
  end
end
