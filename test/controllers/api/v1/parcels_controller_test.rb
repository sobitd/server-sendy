require "test_helper"

class Api::V1::ParcelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_parcel = api_v1_parcels(:one)
  end

  test "should get index" do
    get api_v1_parcels_url, as: :json
    assert_response :success
  end

  test "should create api_v1_parcel" do
    assert_difference("Api::V1::Parcel.count") do
      post api_v1_parcels_url, params: { api_v1_parcel: { destination: @api_v1_parcel.destination, distance: @api_v1_parcel.distance, from: @api_v1_parcel.from, order_status: @api_v1_parcel.order_status, recipient_contact: @api_v1_parcel.recipient_contact, recipient_name: @api_v1_parcel.recipient_name, total_cost: @api_v1_parcel.total_cost, weight: @api_v1_parcel.weight } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_parcel" do
    get api_v1_parcel_url(@api_v1_parcel), as: :json
    assert_response :success
  end

  test "should update api_v1_parcel" do
    patch api_v1_parcel_url(@api_v1_parcel), params: { api_v1_parcel: { destination: @api_v1_parcel.destination, distance: @api_v1_parcel.distance, from: @api_v1_parcel.from, order_status: @api_v1_parcel.order_status, recipient_contact: @api_v1_parcel.recipient_contact, recipient_name: @api_v1_parcel.recipient_name, total_cost: @api_v1_parcel.total_cost, weight: @api_v1_parcel.weight } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_parcel" do
    assert_difference("Api::V1::Parcel.count", -1) do
      delete api_v1_parcel_url(@api_v1_parcel), as: :json
    end

    assert_response :no_content
  end
end
