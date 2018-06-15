class ReportContestWork < ApplicationRecord
	belongs_to :contest_work
	belongs_to :user
end
