class CreateMiniBlogArticleTagRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :mini_blog_article_tag_relations do |t|
      t.integer :article_id, null: false, index: true, limit: 8
      t.foreign_key :mini_blog_articles, column: :article_id
      t.integer :tag_id, null: false, index: true, limit: 8
      t.foreign_key :mini_blog_tags, column: :tag_id

      t.timestamps
    end
  end
end
