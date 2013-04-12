class BoxesController < ApplicationController
  def index
    @boxes = Box.paginate(page: params[:page])
  end

  def show
    @box = Box.find(params[:id])
    @ingredient_categories = @box.ingredient_categories.paginate(page: params[:page])
    @ingredient_list = IngredientCategory.paginate(page: params[:page])
  end

  def new
    @box = Box.new
  end

  def create
    @box = Box.new(box_params)
    if @box.save
      flash[:success] = "New box created"
      redirect_to @box
    end
  end

  def edit
  end

  def update
    if @box.update_attributes(box_params)
      flash[:success] = "Box updated"
    end
  end

  def destroy
    Box.find(params[:id]).destroy
    flash[:success] = "Box destroyed."
    redirect_to users_url
  end

  private

  def box_params
    params.require(:box).permit(:name)
  end
end
