class ReportWorksController < ApplicationController
  def new
  	@work = Work.find(params[:work_id])
  	@report_work = ReportWork.new
  end

  def create
  	work = Work.find(params[:work_id])
  	report_work = ReportWork.new(report_params)
  	report_work.user_id = current_user.id
  	report_work.work_id = work.id
  	if report_work.save
  		redirect_to work_reported_path(work)
  	else
  		flash[:missed] = "通報に失敗しました。"
  		redirect_to work_path(work)
  	end
  end

  def thanks
  end

  private
  def report_params
  	params.require(:report_work).permit(:work_id, :user_id, :reason)
  end
end
