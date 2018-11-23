class CreateComment < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body, null: false, default: ''

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :comments, [:user_id, :created_at]
  end
end
