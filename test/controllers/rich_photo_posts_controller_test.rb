require "test_helper"

class RichPhotoPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rich_photo_post = rich_photo_posts(:one)
  end

  test "should get index" do
    get rich_photo_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_rich_photo_post_url
    assert_response :success
  end

  test "should create rich_photo_post" do
    assert_difference("RichPhotoPost.count") do
      post rich_photo_posts_url, params: { rich_photo_post: { title: @rich_photo_post.title } }
    end

    assert_redirected_to rich_photo_post_url(RichPhotoPost.last)
  end

  test "should show rich_photo_post" do
    get rich_photo_post_url(@rich_photo_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_rich_photo_post_url(@rich_photo_post)
    assert_response :success
  end

  test "should update rich_photo_post" do
    patch rich_photo_post_url(@rich_photo_post), params: { rich_photo_post: { title: @rich_photo_post.title } }
    assert_redirected_to rich_photo_post_url(@rich_photo_post)
  end

  test "should destroy rich_photo_post" do
    assert_difference("RichPhotoPost.count", -1) do
      delete rich_photo_post_url(@rich_photo_post)
    end

    assert_redirected_to rich_photo_posts_url
  end
end
