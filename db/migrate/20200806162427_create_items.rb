class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :brand
      t.string :img_url
      t.string :color
      t.string :size
      t.text :description

      t.timestamps
    end
  end
end
