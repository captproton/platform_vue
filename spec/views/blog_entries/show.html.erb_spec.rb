require 'rails_helper'

RSpec.describe "blog_entries/show", type: :view do
  before(:each) do
    assign(:blog_entry, BlogEntry.create!(
      title: "Title",
      slug: "Slug",
      position: "Position",
      publish_at: "Publish At"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Publish At/)
  end
end
