class RichPhotoPost < ApplicationRecord
  has_one_attached :hero_image
  has_rich_text :body
end
