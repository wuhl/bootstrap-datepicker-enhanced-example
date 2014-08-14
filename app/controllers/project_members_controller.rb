class ProjectMembersController < ApplicationController
  before_action :set_project_member, only: [:show, :edit, :update, :destroy]

  # GET /project_members
  def index
    @project_members = ProjectMember.all
  end

  # GET /project_members/1
  def show
  end

  # GET /project_members/new
  def new
    @project_member = ProjectMember.new
  end

  # GET /project_members/1/edit
  def edit
  end

  # POST /project_members
  def create
    @project_member = ProjectMember.new(project_member_params)

    if @project_member.save
      redirect_to @project_member, notice: t('flash.actions.create.notice', model: ProjectMember.model_name.human( :count=>1 ) )
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /project_members/1
  def update
    if @project_member.update(project_member_params)
      redirect_to @project_member, notice: t('flash.actions.update.notice', model: ProjectMember.model_name.human( :count=>1 ) )
    else
      render action: 'edit'
    end
  end

  # DELETE /project_members/1
  def destroy
    @project_member.destroy
    redirect_to project_members_url, notice: t('flash.actions.delete.notice', model: ProjectMember.model_name.human( :count=>1 ) )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_member
      @project_member = ProjectMember.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_member_params
      params.require(:project_member).permit(:project_phase_id, :resource_id)
    end
end
