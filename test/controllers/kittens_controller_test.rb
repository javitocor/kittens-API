require 'test_helper'

class KittensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitten = kittens(:one)
  end

  test "should get index" do
    get kittens_url
    assert_response :success
  end

  test "should get new" do
    get new_kitten_url
    assert_response :success
  end

  test "should create kitten" do
    assert_difference('Kitten.count') do
      post kittens_url, params: { kitten: {  } }
    end

    assert_redirected_to kitten_url(Kitten.last)
  end

  test "should show kitten" do
    get kitten_url(@kitten)
    assert_response :success
  end

  test "should get edit" do
    get edit_kitten_url(@kitten)
    assert_response :success
  end

  test "should update kitten" do
    patch kitten_url(@kitten), params: { kitten: {  } }
    assert_redirected_to kitten_url(@kitten)
  end

  test "should destroy kitten" do
    assert_difference('Kitten.count', -1) do
      delete kitten_url(@kitten)
    end

    assert_redirected_to kittens_url
  end
end
