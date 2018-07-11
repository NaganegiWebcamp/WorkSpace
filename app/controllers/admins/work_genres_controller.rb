class Admins::WorkGenresController < ApplicationController
	before_action :authenticate_admin!
  def new
  	@work_genre = WorkGenre.new
  	@contest = Contest.new
  end

  def create
  	work_genre = WorkGenre.new(work_genre_params)
  	work_genre.save
  	redirect_to admins_work_genres_path
  end

  def index
  	@work_genres = WorkGenre.all
  	@contests = Contest.all
  end

  def show
  	@work_genre = WorkGenre.find(params[:id])
    @work = Work.where(work_genre_id: @work_genre.id).page(params[:page]).per(20)
  end

  private
  def work_genre_params
  	params.require(:work_genre).permit(:name)
  end
end
