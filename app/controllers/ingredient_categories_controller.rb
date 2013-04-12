class IngredientCategoriesController < ApplicationController
  def index
    @ingredient_categories = IngredientCategory.paginate(page: params[:page])
  end

  def show
    @ingredient_category = IngredientCategory.find(params[:id])
  end

  def new
    @ingredient_category = IngredientCategory.new
  end

  def create
    @ingredient_category = IngredientCategory.new(ingredient_params)
    if @ingredient_category.save
      flash[:success] = "New ingredient created"
      redirect_to @ingredient_category
    end
  end

  def edit
  end

  def update
    if @ingredient_category.update_attributes(ingredient_params)
      flash[:success] = "Ingredient updated"
    end
  end

  def destroy
    Ingredient.find(params[:id]).destroy
    flash[:success] = "Ingredient destroyed."
  end

  private

  def ingredient_params
    params.require(:ingredient_category).permit(:name)
  end
end
