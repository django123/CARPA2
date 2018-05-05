require 'test_helper'

class ArchiveReleaseCouriersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @archive_release_courier = archive_release_couriers(:one)
  end

  test "should get index" do
    get archive_release_couriers_url
    assert_response :success
  end

  test "should get new" do
    get new_archive_release_courier_url
    assert_response :success
  end

  test "should create archive_release_courier" do
    assert_difference('ArchiveReleaseCourier.count') do
      post archive_release_couriers_url, params: { archive_release_courier: { ReleaseCourier_id: @archive_release_courier.ReleaseCourier_id } }
    end

    assert_redirected_to archive_release_courier_url(ArchiveReleaseCourier.last)
  end

  test "should show archive_release_courier" do
    get archive_release_courier_url(@archive_release_courier)
    assert_response :success
  end

  test "should get edit" do
    get edit_archive_release_courier_url(@archive_release_courier)
    assert_response :success
  end

  test "should update archive_release_courier" do
    patch archive_release_courier_url(@archive_release_courier), params: { archive_release_courier: { ReleaseCourier_id: @archive_release_courier.ReleaseCourier_id } }
    assert_redirected_to archive_release_courier_url(@archive_release_courier)
  end

  test "should destroy archive_release_courier" do
    assert_difference('ArchiveReleaseCourier.count', -1) do
      delete archive_release_courier_url(@archive_release_courier)
    end

    assert_redirected_to archive_release_couriers_url
  end
end
