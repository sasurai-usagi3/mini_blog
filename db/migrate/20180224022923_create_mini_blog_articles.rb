class CreateMiniBlogArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :mini_blog_articles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :status, null: false, limit: 1, default: 0
      t.string :uid

      t.timestamps
    end
  end
end
