class User < ApplicationRecord
  has_secure_password

  has_many :boards, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

end