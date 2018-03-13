class Review < ApplicationRecord
  belongs_to :restaurant

  validates :reviewer, presence: true

  validates :body, presence: true
end
