class CommentForContestWork < ApplicationRecord
	belongs_to :user
	belongs_to :contest_work
end
