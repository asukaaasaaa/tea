class CreatePostTeas < ActiveRecord::Migration[6.1]
  def change
    create_table :post_teas do |t|
      t.integer :customer_id
      t.string :title
      t.text :introduction
      t.integer :genre_id

      t.timestamps
    end
  end
end
