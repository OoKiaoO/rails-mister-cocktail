class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :restrict_with_exception
  has_one_attached :photo

  validates :name, uniqueness: true, presence: true
end
