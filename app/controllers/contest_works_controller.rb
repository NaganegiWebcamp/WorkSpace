class ContestWorksController < ApplicationController

  def create
    @contests = Contest.all
    contest_work = ContestWork.new(contest_work_params)
    contest_work.user_id = current_user.id
    if contest_work.save
      redirect_to root_path
    else
      flash[:sor] = "投稿に失敗しました。"
      redirect_to root_path
    end
  end

  def show
    @contest_work = ContestWork.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def contest_work_params
  params.require(:contest_work).permit(:user_id, :contest_id, :title, :explanation, :image_id)
  end
end
