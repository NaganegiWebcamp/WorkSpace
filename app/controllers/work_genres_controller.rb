class WorkGenresController < ApplicationController
  def show
  	@work_genre = WorkGenre.find(params[:id])
  	@works = @work_genre.works.where(hide_flg: false)
  end
end
