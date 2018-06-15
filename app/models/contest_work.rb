class ContestWork < ApplicationRecord
	# attachment :image
	# accepts_attachments_for :contest_works, attachment: :image
	belongs_to :user
	belongs_to :contest
	has_many :report_contest_works, dependent: :destroy
	has_many :contest_work_items, dependent: :destroy
	has_many :comment_for_contest_works, dependent: :destroy
	 # mount_uploader :image, ImageUploader
end
