class Song < ActiveRecord::Base

	belongs_to :genre
	
	validates :title, presence: true
	validates :rating, presence: true
	
	has_many :comments, dependent: :destroy
	
	def average_stars
		comments.average(:stars)
	end
end
