require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  
  test "should get home page" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{ @base_title }"
  end

  test "should get help page" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{ @base_title }"
  end
  
  test "should get about page" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{ @base_title }"
  end
end
