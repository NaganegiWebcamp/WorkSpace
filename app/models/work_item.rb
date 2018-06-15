class WorkItem < ApplicationRecord
	# attachment :image
	belongs_to :work
	 # mount_uploader :image, ImageUploader
end
