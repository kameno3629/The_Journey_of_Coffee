class User < ApplicationRecord
  has_secure_password
  has_many :user_ratings
  has_many :questions

  validates :username, presence: true, uniqueness: true
end
