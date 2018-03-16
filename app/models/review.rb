class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :score, presence: true
  validates_inclusion_of :score, in: 1..5

  validates :body, presence: true
end
