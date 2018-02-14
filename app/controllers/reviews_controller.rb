class ReviewsController < ApplicationController
    belongs_to :restaurant, dependent: :destroy

  validates :content, uniqueness: true, presence: true
  validates :rating, uniqueness: true, presence: true
end
