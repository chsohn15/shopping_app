class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :user_name
      t.integer :rating
      t.text :review
      t.integer :item_id

      t.timestamps
    end
  end
end
