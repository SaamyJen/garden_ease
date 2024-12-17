class SpacesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @project = Project.find(params[:project_id])
    @spaces = Space.all
  end

  def create
    @selected_spaces = Space.where(id: params[:selected_spaces])
    space_ids = @selected_spaces.map(&:id)
    @project = Project.find(params[:project_id])
    @project.spaces_input = params[:spaces_input]
    @project.selected_spaces = space_ids
    @project.save

    redirect_to project_new_location_path(@project)
  end

  private

  def space_params
    params.require(:space).permit(:selected_spaces[], :spaces_input)
  end
end
