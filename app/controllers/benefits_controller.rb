class BenefitsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create]

  def new
    @benefits = Benefit.all

    @practical_benefits = @benefits[0...5]
    @aesthetic_benefits = @benefits[5...10]
    @health_benefits = @benefits[10...15]
    @community_benefits = @benefits[15...20]
  end


  def create
    @selected_benefits = Benefit.find(params[:selected_benefits])
    benefit_ids = @selected_benefits.map(&:id)
    @project = Project.new
    @project.selected_benefits = benefit_ids
    @project.save

    redirect_to project_new_space_path(@project)
  end

  private

  def benefit_params
    params.require(:benefit).permit(:selected_benefits[])
  end
end
