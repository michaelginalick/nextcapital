class Task < ActiveRecord::Base
	attr_accessible :description, :is_complete
	belongs_to :user
end
