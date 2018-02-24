class CreateMiniBlogImages < ActiveRecord::Migration[5.1]
  def change
    create_table :mini_blog_images do |t|
      t.string :content, null: false

      t.timestamps
    end
  end
end
