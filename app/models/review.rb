class Review < ApplicationRecord
  belongs_to :restaurant

  validates :reviewer, presence: true

  validates :score, presence: true
  validates_inclusion_of :score, in: 1..5

  validates :body, presence: true
end
