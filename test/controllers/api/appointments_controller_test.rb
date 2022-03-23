require "test_helper"

class Api::AppointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment = appointments(:one)
  end

  test "should get index" do
    get api_appointments_url, as: :json
    assert_response :success
  end

  test "should create appointment" do
    assert_difference("Appointment.count") do
      post api_appointments_url, params: { appointment: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show appointment" do
    get api_appointment_url(@appointment), as: :json
    assert_response :success
  end

  test "should update appointment" do
    patch api_appointment_url(@appointment), params: { appointment: {  } }, as: :json
    assert_response :success
  end

  test "should destroy appointment" do
    assert_difference("Appointment.count", -1) do
      delete api_appointment_url(@appointment), as: :json
    end

    assert_response :no_content
  end
end
