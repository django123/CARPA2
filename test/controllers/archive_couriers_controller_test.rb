require 'test_helper'

class ArchiveCouriersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @archive_courier = archive_couriers(:one)
  end

  test "should get index" do
    get archive_couriers_url
    assert_response :success
  end

  test "should get new" do
    get new_archive_courier_url
    assert_response :success
  end

  test "should create archive_courier" do
    assert_difference('ArchiveCourier.count') do
      post archive_couriers_url, params: { archive_courier: { Courier_id: @archive_courier.Courier_id } }
    end

    assert_redirected_to archive_courier_url(ArchiveCourier.last)
  end

  test "should show archive_courier" do
    get archive_courier_url(@archive_courier)
    assert_response :success
  end

  test "should get edit" do
    get edit_archive_courier_url(@archive_courier)
    assert_response :success
  end

  test "should update archive_courier" do
    patch archive_courier_url(@archive_courier), params: { archive_courier: { Courier_id: @archive_courier.Courier_id } }
    assert_redirected_to archive_courier_url(@archive_courier)
  end

  test "should destroy archive_courier" do
    assert_difference('ArchiveCourier.count', -1) do
      delete archive_courier_url(@archive_courier)
    end

    assert_redirected_to archive_couriers_url
  end
end
