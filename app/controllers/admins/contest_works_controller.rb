class Admins::ContestWorksController < ApplicationController
	before_action :authenticate_admin!
  def show
    @contest_work = ContestWork.find(params[:id])
  end

  def edit
    @contest_work = ContestWork.find(params[:id])
    @contests = Contest.all
  end

  def update
    @contest_work = ContestWork.find(params[:id])
    @contest_work.update(work_update_params)
    redirect_to admins_contest_work_path(@contest_work)
  end

  def destroy
    contest_work = ContestWork.find(params[:id])
    contest_work.destroy
    redirect_to admins_path
  end

private
  def work_params
    params.require(:contest_work).permit(:user_id, :contest_id, :title, :explanation, :image, :hide_flg)
  end

  def work_update_params
    params.require(:contest_work).permit(:contest_id, :title, :explanation, :hide_flg)
  end
end
