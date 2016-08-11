class AddBackgroundUrlToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :background_url, :string, default: 'https://unsplash.it/g/1280/720'
  end
end
