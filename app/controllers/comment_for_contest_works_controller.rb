class CommentForContestWorksController < ApplicationController
	before_action :authenticate_user! ,only: [:create, :update, :destroy]
	def create
		@comment_for_contest_work = CommentForContestWork.new(comment_params)
		@contest_work = ContestWork.find(params[:contest_work_id])
		@comment_for_contest_work.contest_work_id = @contest_work.id
		@comment_for_contest_work.user_id = current_user.id
		if @comment_for_contest_work.save
			redirect_to contest_work_path(@contest_work)
		else
			flash[:missed] = "コメント投稿に失敗しました。"
			redirect_to contest_work_path(@contest_work)
		end

	end

	def destroy
		contest_work = ContestWork.find(params[:contest_work_id])
		comment_for_contest_work = CommentForContestWork.find(params[:id])
		if current_user.id == comment_for_contest_work.user_id
			comment_for_contest_work.destroy
		end
		redirect_to contest_work_path(contest_work.id)
	end

	private
	def comment_params
		params.require(:comment_for_contest_work).permit(:user_id, :contest_work_id, :body)
	end
end
