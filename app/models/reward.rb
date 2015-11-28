class Reward < ActiveRecord::Base
	belongs_to :user
	after_initialize :init

    def init
 		self.price ||= 10
    end
    validates :title, presence: true
    validates :price, presence: true
end
