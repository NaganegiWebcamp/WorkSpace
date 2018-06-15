class WorksController < ApplicationController
  def index
  	@work = Work.new
  	@work_genres = WorkGenre.all
    @open_contests = Contest.where(status: true)
    @hide_contests = Contest.where(status: false)
  	@works = Work.where(hide_flg: false)
  	@contest_work = ContestWork.new
  	@contests = Contest.where(status: false)
    @contest_works = ContestWork.all
  end

  def create
  	@work_genres = WorkGenre.all
  	work = Work.new(work_params)
  	work.user_id = current_user.id
  	if work.save
  	  redirect_to root_path
  	else
  	  render :index
  	  @work = Work.new
  	  @work_genres = WorkGenre.all
  	  @works = Work.all
  	end
  end

  def show
    @work = Work.find(params[:id])
    @comment_for_work = CommentForWork.new
    @comment_for_works = CommentForWork.all
  end

  def edit
  end

  def hide_show_update
    work = Work.find(params[:id])
    if work.off?
      work.update(hide_flg: true)
    else
      work.update(hide_flg: false)
    end
      redirect_to work_path(work)
  end

  def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to user_path(current_user)
  end

  private
  def work_params
  	params.require(:work).permit(:user_id, :work_genre_id, :title, :explanation, :image)
  end

  def update_params
    params.fetch(:work,{}).permit(:hide_flg)
  end
end
