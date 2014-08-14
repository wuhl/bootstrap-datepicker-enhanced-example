require 'test_helper'

class ProjectPhasesControllerTest < ActionController::TestCase
  setup do
    @project_phase = project_phases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_phases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_phase" do
    assert_difference('ProjectPhase.count') do
      post :create, project_phase: { end: @project_phase.end, name: @project_phase.name, project_id: @project_phase.project_id, start: @project_phase.start }
    end

    assert_redirected_to project_phase_path(assigns(:project_phase))
  end

  test "should show project_phase" do
    get :show, id: @project_phase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_phase
    assert_response :success
  end

  test "should update project_phase" do
    patch :update, id: @project_phase, project_phase: { end: @project_phase.end, name: @project_phase.name, project_id: @project_phase.project_id, start: @project_phase.start }
    assert_redirected_to project_phase_path(assigns(:project_phase))
  end

  test "should destroy project_phase" do
    assert_difference('ProjectPhase.count', -1) do
      delete :destroy, id: @project_phase
    end

    assert_redirected_to project_phases_path
  end
end
