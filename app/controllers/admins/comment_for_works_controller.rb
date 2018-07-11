class Admins::CommentForWorksController < ApplicationController
		before_action :authenticate_admin!
	def destroy
		work = Work.find(params[:work_id])
		comment_for_work = CommentForWork.find(params[:id])
		comment_for_work.destroy
		redirect_to admins_work_path(work.id)
	end
end
