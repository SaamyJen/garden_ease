class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :generate ]

  def index
    @projects = Project.where(user_id: current_user.id)
  end

  def show
    @projects = Project.all
    @project = Project.find(params[:project_id])
    @items = @project.items


    # map
    @florists = Florist.near([@project.latitude, @project.longitude], 10).geocoded
    @markers = @projects.geocoded.map do |project|
      {
        lat: @project.latitude,
        lng: @project.longitude,
      }
    end
    @markers += @florists.geocoded.map do |florist|
      {
        lat: florist.latitude,
        lng: florist.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {florist: florist}),
        marker_html: render_to_string(partial: "marker")
      }
    end

    # pdf
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "GardenEase-#{@project.name}", template: 'projects/pdf', locals: { project: @project }, formats: [:html], no_background: true
      end
    end
  end

  def generate
    @project = Project.find(params[:project_id])
    @project.set_content
    redirect_to project_results_path(@project)
  end

  def my_saved_projects
    @project = Project.find(params[:project_id])
    @project.user_id = current_user.id
    @project.save
    redirect_to project_results_path(@project)
    flash[:saved] = "Saved in your projects!"
  end

  def pdf
    @project = Project.find(params[:project_id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:project_id)
  end
end
