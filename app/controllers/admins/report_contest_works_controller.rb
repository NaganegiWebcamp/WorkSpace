class Admins::ReportContestWorksController < ApplicationController
	before_action :authenticate_admin!
  def show
  	@report = ReportContestWork.find(params[:id])
  end

  def destroy
  	report = ReportContestWork.find(params[:id])
  	report.destroy
  	redirect_to admins_report_works_path
  end
end
