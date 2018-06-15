class ContestWorkItem < ApplicationRecord
	# attachment :image
	belongs_to :contest_work
	 # mount_uploader :image, ImageUploader
end
