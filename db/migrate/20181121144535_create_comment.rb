class CreateComment < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body, null: false, default: ''
      t.timestamps null: false
    end
  end
end
