mojito = Cocktail.create!(name: 'Mojito')
lemon = Ingredient.create!(name: 'Lemon')
dose = Dose.new(description: 'the Mojito cocktail needs 6cl of lemon', cocktail: mojito, ingredient: lemon)
dose.save

Ingredient.create!(name: "Ice")
Ingredient.create!(name: "Mint leaves")
