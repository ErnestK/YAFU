class Scrub < ActiveRecord::Base
	belongs_to :user 
	validates :name, presence: true

	def self.latest
		Scrub.order(:updated_at).last
	end
end
