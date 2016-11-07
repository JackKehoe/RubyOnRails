class Genre < ActiveRecord::Base

	has_many :songs, dependent: :destroy
	
	validates :name, presence: true
	validates :name, uniqueness: true
	
	
end
