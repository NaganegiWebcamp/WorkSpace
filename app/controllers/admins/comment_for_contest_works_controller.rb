class Admins::CommentForContestWorksController < ApplicationController
		before_action :authenticate_admin!
	def destroy
		contest_work = ContestWork.find(params[:contest_work_id])
		comment_for_contest_work = CommentForContestWork.find(params[:id])
		comment_for_contest_work.destroy
		redirect_to admins_contest_work_path(contest_work.id)
	end
end
