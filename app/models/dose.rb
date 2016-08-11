class Dose < ApplicationRecord
  belongs_to :ingredient
  # handle this : you can't delete an ingredient if it used by at least one cocktail.
  belongs_to :cocktail

  validates :description, :cocktail, :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient,
    message: "[cocktail, ingredient] couples should be unique" }
end
