class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end

# A review must belong to a restaurant. DONE
# A review must have a content. DONE
# A review must have a rating. DONE 
# A review’s rating must be a number between 0 and 5. DONE
# A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid! DONE
