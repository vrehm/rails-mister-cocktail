class AddCloudinaryPublicIdToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :cloudinary_public_id, :string
  end
end
