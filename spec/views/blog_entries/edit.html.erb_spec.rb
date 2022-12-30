require 'rails_helper'

RSpec.describe "blog_entries/edit", type: :view do
  let(:blog_entry) {
    BlogEntry.create!(
      title: "MyString",
      slug: "MyString",
      position: "MyString",
      publish_at: "MyString"
    )
  }

  before(:each) do
    assign(:blog_entry, blog_entry)
  end

  it "renders the edit blog_entry form" do
    render

    assert_select "form[action=?][method=?]", blog_entry_path(blog_entry), "post" do

      assert_select "input[name=?]", "blog_entry[title]"

      assert_select "input[name=?]", "blog_entry[slug]"

      assert_select "input[name=?]", "blog_entry[position]"

      assert_select "input[name=?]", "blog_entry[publish_at]"
    end
  end
end
