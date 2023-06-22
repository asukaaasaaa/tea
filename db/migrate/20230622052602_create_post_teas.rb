class CreatePostTeas < ActiveRecord::Migration[6.1]
  def change
    create_table :post_teas do |t|
      t.integer :customer_id
      t.string :title
      t.text :introduction
      t.string :kind

      t.timestamps
    end
  end
end
