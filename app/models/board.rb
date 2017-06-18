class Board < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  has_many :lists, dependent: :destroy
  validates :title, presence: true
end