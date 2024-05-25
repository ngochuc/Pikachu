require "test_helper"

class PikachusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pikachu = pikachus(:one)
  end

  test "should get index" do
    get pikachus_url
    assert_response :success
  end

  test "should get new" do
    get new_pikachu_url
    assert_response :success
  end

  test "should create pikachu" do
    assert_difference("Pikachu.count") do
      post pikachus_url, params: { pikachu: {  } }
    end

    assert_redirected_to pikachu_url(Pikachu.last)
  end

  test "should show pikachu" do
    get pikachu_url(@pikachu)
    assert_response :success
  end

  test "should get edit" do
    get edit_pikachu_url(@pikachu)
    assert_response :success
  end

  test "should update pikachu" do
    patch pikachu_url(@pikachu), params: { pikachu: {  } }
    assert_redirected_to pikachu_url(@pikachu)
  end

  test "should destroy pikachu" do
    assert_difference("Pikachu.count", -1) do
      delete pikachu_url(@pikachu)
    end

    assert_redirected_to pikachus_url
  end
end
