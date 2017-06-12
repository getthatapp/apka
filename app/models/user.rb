class User < ApplicationRecord
  include BCrypt
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  # def password
  #   @password ||= Password.new(password_digest)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_digest = @password
  # end
end