class Note < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :tags
	validates :title, presence: true
	after_initialize :init
	def init
		self.important ||= false
	end
end
