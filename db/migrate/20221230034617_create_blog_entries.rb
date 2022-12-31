class CreateBlogEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_entries do |t|
      t.string :title
      t.string :slug
      t.string :position
      t.string :publish_at

      t.timestamps
    end
  end
end
