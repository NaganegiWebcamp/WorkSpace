class ContestsController < ApplicationController

  def show
  	@work_genres = WorkGenre.all
  	@open_contests = Contest.where(status: true)
  	@hide_contests = Contest.where(status: false)
  	@contest = Contest.find(params[:id])
  	@contest_works = ContestWork.where(contest_id: @contest.id).where(hide_flg: false).page(params[:page]).per(20)
  end
end
