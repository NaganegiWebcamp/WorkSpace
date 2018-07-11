class WorkGenresController < ApplicationController
  def show
  	@work_genres = WorkGenre.all
  	@open_contests = Contest.where(status: true)
  	@hide_contests = Contest.where(status: false)
  	@work_genre = WorkGenre.find(params[:id])
  	@works = Work.where(work_genre_id: @work_genre).where(hide_flg: false).page(params[:page]).per(20)
  end
end
