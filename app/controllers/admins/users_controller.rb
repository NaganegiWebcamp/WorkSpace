class Admins::UsersController < ApplicationController
	before_action :authenticate_admin!
   def index
  	@users = User.all
    @q = User.ransack(params[:q])
    @qs = @q.result(distinct: true)
  end

  def show
  	@user = User.find(params[:id])
  	@works = Work.where(user_id: @user.id).page(params[:page]).per(20)
  	@contest_works = ContestWork.where(user_id: @user.id).page(params[:page]).per(20)
  end

  def search
    @q = User.search(search_params)
    @qs = @q.result(distinct: true)
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(update_params)
    redirect_to admins_user_path(user.id)
  end


  private
  def update_params
    params.require(:user).permit(:email, :name, :introduction, :image)
  end

  def search_params
    params.require(:q).permit(:name_cont)
  end
end
