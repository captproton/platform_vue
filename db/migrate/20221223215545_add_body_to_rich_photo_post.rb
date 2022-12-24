class AddBodyToRichPhotoPost < ActiveRecord::Migration[7.0]
  def change
    add_column :rich_photo_posts, :body, :text
  end
end
