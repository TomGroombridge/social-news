class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :votes

	def points
		votes.where(up: true).count  - votes.where(up: false).count
	end
end
