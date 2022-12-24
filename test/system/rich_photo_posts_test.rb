require "application_system_test_case"

class RichPhotoPostsTest < ApplicationSystemTestCase
  setup do
    @rich_photo_post = rich_photo_posts(:one)
  end

  test "visiting the index" do
    visit rich_photo_posts_url
    assert_selector "h1", text: "Rich photo posts"
  end

  test "should create rich photo post" do
    visit rich_photo_posts_url
    click_on "New rich photo post"

    fill_in "Title", with: @rich_photo_post.title
    click_on "Create Rich photo post"

    assert_text "Rich photo post was successfully created"
    click_on "Back"
  end

  test "should update Rich photo post" do
    visit rich_photo_post_url(@rich_photo_post)
    click_on "Edit this rich photo post", match: :first

    fill_in "Title", with: @rich_photo_post.title
    click_on "Update Rich photo post"

    assert_text "Rich photo post was successfully updated"
    click_on "Back"
  end

  test "should destroy Rich photo post" do
    visit rich_photo_post_url(@rich_photo_post)
    click_on "Destroy this rich photo post", match: :first

    assert_text "Rich photo post was successfully destroyed"
  end
end
