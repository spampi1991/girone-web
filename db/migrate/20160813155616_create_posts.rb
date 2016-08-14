class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :published_at

      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
