class Work < ApplicationRecord
	mount_uploader :image, WorkImageUploader
	belongs_to :user
	belongs_to :work_genre
	has_many :report_works, dependent: :destroy
	has_many :comment_for_works, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :work_items , dependent: :destroy
	enum hide_flg: {off: false, on: true }
end
