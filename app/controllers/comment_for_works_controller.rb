class CommentForWorksController < ApplicationController
	before_action :authenticate_user! ,only: [:create, :update, :destroy]
	def create
		@comment_for_work = CommentForWork.new(comment_params)
		@work = Work.find(params[:work_id])
		@comment_for_work.work_id = @work.id
		@comment_for_work.user_id = current_user.id
		if @comment_for_work.save
			redirect_to work_path(@work)
		else
			flash[:missed] = "コメント投稿に失敗しました。"
			redirect_to work_path(@work)
		end

	end

	def destroy
		work = Work.find(params[:work_id])
		comment_for_work = CommentForWork.find(params[:id])
		if current_user.id == comment_for_work.user_id
			comment_for_work.destroy
		end
		redirect_to work_path(work.id)
	end

	private
	def comment_params
		params.require(:comment_for_work).permit(:user_id, :work_id, :body)
	end
end
