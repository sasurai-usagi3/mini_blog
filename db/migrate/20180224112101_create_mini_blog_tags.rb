class CreateMiniBlogTags < ActiveRecord::Migration[5.1]
  def change
    create_table :mini_blog_tags do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
