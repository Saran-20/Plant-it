require "test_helper"

class ScaffoldControllerTest < ActionDispatch::IntegrationTest
  test "should get nature" do
    get scaffold_nature_url
    assert_response :success
  end

  test "should get name:string" do
    get scaffold_name:string_url
    assert_response :success
  end

  test "should get description:string" do
    get scaffold_description:string_url
    assert_response :success
  end

  test "should get category:string" do
    get scaffold_category:string_url
    assert_response :success
  end

  test "should get price:integer" do
    get scaffold_price:integer_url
    assert_response :success
  end

  test "should get image:string" do
    get scaffold_image:string_url
    assert_response :success
  end
end
