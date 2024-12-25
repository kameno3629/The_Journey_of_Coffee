class UserRating < ApplicationRecord
  belongs_to :user
  belongs_to :coffee

  validates :overall_rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
