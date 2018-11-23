class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.integer :comment_id
      t.text :body, null: false, default: ''

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :replies, [:user_id, :created_at]
  end
end
