class WorksController < ApplicationController
  before_action :authenticate_user! ,only: [:new, :create, :edit, :update, :hide_show_update, :destroy]
  def new
    @work = Work.new
    @work_genres = WorkGenre.all
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

  def index
  	@work_genres = WorkGenre.all
    @open_contests = Contest.where(status: true)
    @hide_contests = Contest.where(status: false)
  end

  def show
    @work = Work.find(params[:id])
    @comment_for_work = CommentForWork.new
  end

  def edit
    @work = Work.find(params[:id])
    @work_genres = WorkGenre.all
  end

  def update
    @work = Work.find(params[:id])
    if current_user.id == @work.user_id
      @work.update(work_update_params)
      redirect_to work_path(@work)
    else
      render :edit
    end
  end

  def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to user_path(current_user)
  end

  private
  def work_params
  	params.require(:work).permit(:user_id, :work_genre_id, :title, :explanation, :image, :hide_flg)
  end

  def work_update_params
    params.require(:work).permit(:work_genre_id, :title, :explanation, :hide_flg)
  end

end
