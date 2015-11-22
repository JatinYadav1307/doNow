class Tag < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :trials
	has_and_belongs_to_many :habits
	has_and_belongs_to_many :todos
end
