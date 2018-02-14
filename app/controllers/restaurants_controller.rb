class RestaurantsController < ApplicationController
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone_number, uniqueness: true, presence: true
  validates :category, inclusion: { in:["chinese", "italian", "japanese", "french", "belgian"]}
  validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
end
