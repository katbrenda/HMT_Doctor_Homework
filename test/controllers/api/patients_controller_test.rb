require "test_helper"

class Api::PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get api_patients_url, as: :json
    assert_response :success
  end

  test "should create patient" do
    assert_difference("Patient.count") do
      post api_patients_url, params: { patient: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show patient" do
    get api_patient_url(@patient), as: :json
    assert_response :success
  end

  test "should update patient" do
    patch api_patient_url(@patient), params: { patient: {  } }, as: :json
    assert_response :success
  end

  test "should destroy patient" do
    assert_difference("Patient.count", -1) do
      delete api_patient_url(@patient), as: :json
    end

    assert_response :no_content
  end
end
