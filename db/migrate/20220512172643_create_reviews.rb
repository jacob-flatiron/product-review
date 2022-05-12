class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :Product_id
      t.integer :User_id
      t.integer :star_rating
      t.string :comment
    end
  end
end
