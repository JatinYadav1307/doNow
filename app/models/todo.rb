class Todo < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :tags
	after_initialize :init

    def init
 		self.difficulty ||= 0
    end
    validates :title, presence: true
	validates :difficulty, numericality: {greater_than_equal_to: 0,less_than_or_equal_to: 4,:allow_blank => true}
end
