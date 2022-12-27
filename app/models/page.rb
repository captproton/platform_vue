class Page < ApplicationRecord
  before_update       :update_slug

  belongs_to          :user
  belongs_to          :parent, class_name: 'Page', optional: true
  belongs_to          :site

  extend FriendlyId
  friendly_id :slug_candidates, use: %i[slugged history]

  # Try building a slug based on the following fields in
  # increasing order of specificity.
  def slug_candidates
    [
      :title,
      %i[title site]
    ]
  end

  def update_slug
    self.slug = title
  end
end
