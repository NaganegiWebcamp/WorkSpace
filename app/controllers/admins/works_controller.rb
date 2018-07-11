class Admins::WorksController < ApplicationController
	before_action :authenticate_admin!

  def show
    @work = Work.find(params[:id])
  end

  def edit
  	@work = Work.find(params[:id])
    @work_genres = WorkGenre.all
  end

  def update
  	@work = Work.find(params[:id])
 	@work.update(work_update_params)
    redirect_to admins_work_path(@work)
  end

  def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to admins_path
  end

private
  def work_params
  	params.require(:work).permit(:user_id, :work_genre_id, :title, :explanation, :image, :hide_flg)
  end

  def work_update_params
    params.require(:work).permit(:work_genre_id, :title, :explanation, :hide_flg)
  end
end
