class Admins::ContestsController < ApplicationController
	before_action :authenticate_admin!

  def create
    contest = Contest.new(contest_params)
    contest.save
    redirect_to admins_work_genres_path
  end

  def show
    @contest = Contest.find(params[:id])
    @contest_works = ContestWork.where(contest_id: @contest.id).page(params[:page]).per(20)
  end


private
  def contest_params
  	params.require(:contest).permit(:name, :status)
  end
end
