require 'rails_helper'

RSpec.describe "blog_entries/new", type: :view do
  before(:each) do
    assign(:blog_entry, BlogEntry.new(
      title: "MyString",
      slug: "MyString",
      position: "MyString",
      publish_at: "MyString"
    ))
  end

  it "renders new blog_entry form" do
    render

    assert_select "form[action=?][method=?]", blog_entries_path, "post" do

      assert_select "input[name=?]", "blog_entry[title]"

      assert_select "input[name=?]", "blog_entry[slug]"

      assert_select "input[name=?]", "blog_entry[position]"

      assert_select "input[name=?]", "blog_entry[publish_at]"
    end
  end
end
