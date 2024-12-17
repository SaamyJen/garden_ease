class ProgressesController < ApplicationController
  def new
    @progress = Progress.new
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id])
    @progress = Progress.new(progress_params)
    @progress.project = @project

    if @progress.save
      redirect_to project_results_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @progress = Progress.find(params[:id])
    @progress.destroy
    redirect_to project_results_path(@progress.project)
  end

  private

  def progress_params
    params.require(:progress).permit(:description, :photo)
  end
end
