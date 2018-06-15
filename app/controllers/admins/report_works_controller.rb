class Admins::ReportWorksController < ApplicationController
  def index
  	@reports = ReportWork.all
  	@c_reports = ReportContestWork.all
  end
end
