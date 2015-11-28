class Daily < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :tags
	after_initialize :init
	
    def init
 		self.streak ||= 0
 		self.difficulty ||= 0
 		self.priority ||=0
    end
    validates :title, presence: true
	validates :difficulty, numericality: {greater_than_or_equal_to: 0,less_than_or_equal_to: 4,:allow_blank => true}
end
