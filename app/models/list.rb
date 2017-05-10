class List < ApplicationRecord
	belongs_to :board
  has_many :tasks
	validates :title, presence: true
end