class Trial < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :tags
	validates :diff, numericality: { less_than_or_equal_to: 4,:allow_blank => true}
end
