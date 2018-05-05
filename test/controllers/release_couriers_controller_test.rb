require 'test_helper'

class ReleaseCouriersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @release_courier = release_couriers(:one)
  end

  test "should get index" do
    get release_couriers_url
    assert_response :success
  end

  test "should get new" do
    get new_release_courier_url
    assert_response :success
  end

  test "should create release_courier" do
    assert_difference('ReleaseCourier.count') do
      post release_couriers_url, params: { release_courier: { date: @release_courier.date, destination: @release_courier.destination, orderNumber: @release_courier.orderNumber, reference: @release_courier.reference, user_id: @release_courier.user_id } }
    end

    assert_redirected_to release_courier_url(ReleaseCourier.last)
  end

  test "should show release_courier" do
    get release_courier_url(@release_courier)
    assert_response :success
  end

  test "should get edit" do
    get edit_release_courier_url(@release_courier)
    assert_response :success
  end

  test "should update release_courier" do
    patch release_courier_url(@release_courier), params: { release_courier: { date: @release_courier.date, destination: @release_courier.destination, orderNumber: @release_courier.orderNumber, reference: @release_courier.reference, user_id: @release_courier.user_id } }
    assert_redirected_to release_courier_url(@release_courier)
  end

  test "should destroy release_courier" do
    assert_difference('ReleaseCourier.count', -1) do
      delete release_courier_url(@release_courier)
    end

    assert_redirected_to release_couriers_url
  end
end
