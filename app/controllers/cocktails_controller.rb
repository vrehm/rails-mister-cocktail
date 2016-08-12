class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [ :show ]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.cloudinary_public_id = params[:public_id]
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  def show
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :background_url, :cloudinary_public_id)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
