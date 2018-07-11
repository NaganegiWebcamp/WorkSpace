class Admins::ReportWorksController < ApplicationController
	before_action :authenticate_admin!
  def index
  	@reports = ReportWork.page(params[:page]).per(20)
  	@c_reports = ReportContestWork.page(params[:page]).per(20)
  end

  def show
  	@report = ReportWork.find(params[:id])
  end

  def destroy
  	report = ReportWork.find(params[:id])
  	report.destroy
  	redirect_to admins_report_works_path
  end
end
