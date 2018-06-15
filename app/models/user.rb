class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # attachment :profile_image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :report_contest_works
  has_many :contest_works
  has_many :contest_work_items, through: :contest_works
  has_many :report_works
  has_many :works
  has_many :work_items, through: :works
  has_many :comment_for_works
  has_many :comment_for_contest_works
  has_many :likes
   # mount_uploader :image, ImageUploader
end
