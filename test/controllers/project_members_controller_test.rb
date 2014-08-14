require 'test_helper'

class ProjectMembersControllerTest < ActionController::TestCase
  setup do
    @project_member = project_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_member" do
    assert_difference('ProjectMember.count') do
      post :create, project_member: { project_phase_id: @project_member.project_phase_id, resource_id: @project_member.resource_id }
    end

    assert_redirected_to project_member_path(assigns(:project_member))
  end

  test "should show project_member" do
    get :show, id: @project_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_member
    assert_response :success
  end

  test "should update project_member" do
    patch :update, id: @project_member, project_member: { project_phase_id: @project_member.project_phase_id, resource_id: @project_member.resource_id }
    assert_redirected_to project_member_path(assigns(:project_member))
  end

  test "should destroy project_member" do
    assert_difference('ProjectMember.count', -1) do
      delete :destroy, id: @project_member
    end

    assert_redirected_to project_members_path
  end
end
