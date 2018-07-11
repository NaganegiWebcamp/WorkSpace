class ReportContestWorksController < ApplicationController
	before_action :authenticate_user! ,only: [:new, :create]
  def new
  	@contest_work = ContestWork.find(params[:contest_work_id])
  	@report_contest_work = ReportContestWork.new
  end

  def create
  	contest_work = ContestWork.find(params[:contest_work_id])
  	report_contest_work = ReportContestWork.new(report_params)
  	report_contest_work.user_id = current_user.id
  	report_contest_work.contest_work_id = contest_work.id
  	if report_contest_work.save
  		redirect_to contest_work_reported_path(contest_work.id)
  	else
  		flash[:missed] = "通報に失敗しました。"
  		redirect_to contest_work_path(contest_work.id)
  	end
  end

   def thanks
    @contest_work = ContestWork.find(params[:contest_work_id])
  end

  private
  def report_params
  	params.require(:report_contest_work).permit(:contest_work_id, :user_id, :reason)
  end
end
