class Contest < ApplicationRecord
	has_many :contest_works, dependent: :destroy
end
