require 'test_helper'

class ArchiveProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @archive_project = archive_projects(:one)
  end

  test "should get index" do
    get archive_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_archive_project_url
    assert_response :success
  end

  test "should create archive_project" do
    assert_difference('ArchiveProject.count') do
      post archive_projects_url, params: { archive_project: { project_id: @archive_project.project_id } }
    end

    assert_redirected_to archive_project_url(ArchiveProject.last)
  end

  test "should show archive_project" do
    get archive_project_url(@archive_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_archive_project_url(@archive_project)
    assert_response :success
  end

  test "should update archive_project" do
    patch archive_project_url(@archive_project), params: { archive_project: { project_id: @archive_project.project_id } }
    assert_redirected_to archive_project_url(@archive_project)
  end

  test "should destroy archive_project" do
    assert_difference('ArchiveProject.count', -1) do
      delete archive_project_url(@archive_project)
    end

    assert_redirected_to archive_projects_url
  end
end
