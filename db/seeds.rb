INGREDIENTS =
["Vodka",
"Gin",
"Rum",
"Tequila",
"Bourbon",
"Blended Scotch",
"Brandy",
"Triple Sec",
"Maraschino liqueur",
"Coffee liqueur",
"Crème de Cassis",
"Crème de Cacao",
"Dry Vermouth",
"Sweet (red) Vermouth",
"Campari",
"Angostura Bitters",
"Orange Bitters",
"Sugar syrup",
"Grenadine",
"Ice",
"Limes and lemons",
"Oranges",
"Orange Juice",
"Apple Juice",
"Salt and pepper",
"Sugar"]

INGREDIENTS.each { |ingredient| Ingredient.create!(name: ingredient) }
