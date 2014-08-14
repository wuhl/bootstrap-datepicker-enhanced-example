class ProjectPhasesController < ApplicationController
  before_action :set_project_phase, only: [:show, :edit, :update, :destroy]

  # GET /project_phases
  def index
    @project_phases = ProjectPhase.all
  end

  # GET /project_phases/1
  def show
  end

  # GET /project_phases/new
  def new
    @project_phase = ProjectPhase.new
  end

  # GET /project_phases/1/edit
  def edit
  end

  # POST /project_phases
  def create
    @project_phase = ProjectPhase.new(project_phase_params)

    if @project_phase.save
      redirect_to @project_phase, notice: t('flash.actions.create.notice', model: ProjectPhase.model_name.human( :count=>1 ) )
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /project_phases/1
  def update
    if @project_phase.update(project_phase_params)
      redirect_to @project_phase, notice: t('flash.actions.update.notice', model: ProjectPhase.model_name.human( :count=>1 ) )
    else
      render action: 'edit'
    end
  end

  # DELETE /project_phases/1
  def destroy
    @project_phase.destroy
    redirect_to project_phases_url, notice: t('flash.actions.delete.notice', model: ProjectPhase.model_name.human( :count=>1 ) )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_phase
      @project_phase = ProjectPhase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_phase_params
      params.require(:project_phase).permit(:project_id, :name, :start, :end)
    end
end
