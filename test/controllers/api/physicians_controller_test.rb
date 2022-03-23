require "test_helper"

class Api::PhysiciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physician = physicians(:one)
  end

  test "should get index" do
    get api_physicians_url, as: :json
    assert_response :success
  end

  test "should create physician" do
    assert_difference("Physician.count") do
      post api_physicians_url, params: { physician: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show physician" do
    get api_physician_url(@physician), as: :json
    assert_response :success
  end

  test "should update physician" do
    patch api_physician_url(@physician), params: { physician: {  } }, as: :json
    assert_response :success
  end

  test "should destroy physician" do
    assert_difference("Physician.count", -1) do
      delete api_physician_url(@physician), as: :json
    end

    assert_response :no_content
  end
end
