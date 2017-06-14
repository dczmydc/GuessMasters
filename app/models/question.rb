class Question < ApplicationRecord
	belongs_to :admin
	has_many :predictions
	has_many :users, through: :predictionw

	validates :description, length:{in: 1..500,message:'must in 1-500 characters.'} 
	
end
