class ContestWorksController < ApplicationController
before_action :authenticate_user! ,only: [:new, :create, :edit, :update, :destroy, :hide_show_update]
  def new
    @contest_work = ContestWork.new
    @contests = Contest.where(status: true)
  end

  def create
    @contests = Contest.all
    @contest_work = ContestWork.new(contest_work_params)
    @contest_work.user_id = current_user.id
    if @contest_work.save
      redirect_to root_path
    else
      flash[:sor] = "投稿に失敗しました。"
      redirect_to root_path
    end
  end

  def show
    @contest_work = ContestWork.find(params[:id])
    @comment_for_contest_work = CommentForContestWork.new
  end

  def edit
    @contest_work = ContestWork.find(params[:id])
    @contests = Contest.where(status:true)
  end

  def update
    @contest_work = ContestWork.find(params[:id])
    if current_user.id == @contest_work.user_id
      @contest_work.update(contest_work_update_params)
      redirect_to contest_work_path(@contest_work)
    else
      render :edit
    end
  end

  def destroy
    contest_work = ContestWork.find(params[:id])
    contest_work.destroy
    redirect_to user_path(current_user)
  end

  private
  def contest_work_params
    params.require(:contest_work).permit(:user_id, :contest_id, :title, :explanation, :image, :hide_flg)
  end

  def contest_work_update_params
    params.require(:contest_work).permit(:contest_id, :title, :explanation, :hide_flg)
  end

end
