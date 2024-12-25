class Coffee < ApplicationRecord
  has_many :user_ratings

  validates :name, presence: true
  validates :acidity, :bitterness, :smoothness, :sweetness, :aroma, :aftertaste, :body,
            numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

  # 他のバリデーションやメソッドを追加することも可能です
end
