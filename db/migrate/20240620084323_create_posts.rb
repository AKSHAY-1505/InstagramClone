class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :caption
      t.integer :likes_count, default: 0
      t.references :user, null: false, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
