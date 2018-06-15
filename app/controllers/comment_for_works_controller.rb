class CommentForWorksController < ApplicationController
	def create
		comment_for_work = CommentForWork.new(comment_params)
		work = Work.find(params[:id])
		comment_for_work.work_id = work.id
		comment_for_work.user_id = current_user.id
		if comment_for_work.save
			redirect_to work_path(work)
		else
			flash[:missed] = "コメント投稿に失敗しました。"
			redirect_to work_path(work)
		end

	end

	def update
	end

	def destroy
	end

	private
	def comment_params
		params.require(:comment_for_work).permit(:user_id, :work_id, :body)
	end
end
