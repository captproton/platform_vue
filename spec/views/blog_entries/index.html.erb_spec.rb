require 'rails_helper'

RSpec.describe "blog_entries/index", type: :view do
  before(:each) do
    assign(:blog_entries, [
      BlogEntry.create!(
        title: "Title",
        slug: "Slug",
        position: "Position",
        publish_at: "Publish At"
      ),
      BlogEntry.create!(
        title: "Title",
        slug: "Slug",
        position: "Position",
        publish_at: "Publish At"
      )
    ])
  end

  it "renders a list of blog_entries" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Slug".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Position".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publish At".to_s), count: 2
  end
end
