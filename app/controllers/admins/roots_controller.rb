class Admins::RootsController < ApplicationController
	before_action :authenticate_admin!
  def top
  	@works = Work.all
  	@contest_works = ContestWork.all
  	@contests = Contest.all
  	@work_genres = WorkGenre.all
  end
end

