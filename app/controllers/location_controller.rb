class LocationController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id]) #find the project by id
    @project.update(location: params[:location]) #update and save it on the db
    @project.save
    redirect_to project_results_path(@project)
  end
end
