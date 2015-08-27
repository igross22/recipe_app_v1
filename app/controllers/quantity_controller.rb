class QuantityController < ApplicationController

# clean this up later

def index
    @quantity = Quantity.all
  end

  def new
    @quantity = Quantity.new
  end

  def create
    @quantity = Quantity.new
    @quantity.quantity = params[:quantity]
    @quantity.recipe_id = params[:recipe_id]
    @quantity.ingredient_id = params[:ingredient_id]

    #will have to add quantities later

    if @quantity.save
      redirect_to :back, :notice => "Recipe created successfully."
    else
      render 'new'
    end
  end

  def edit
    @quantity = Quantity.find(params[:id])

  end

  def update
    @quantity = Quantity.find(params[:id])

    @quantity.amount = params[:quantity]
    @quantity.recipe_id = params[:recipe_id]
    @quantity.ingredient_id = params[:ingredient_id]


    if @quantity.save
      redirect_to :back, :notice => "Recipe updated successfully."
    else
      render 'edit'
    end

  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])

    @ingredient.destroy

    redirect_to "/recipes", :notice => "Recipe deleted."
  end

end


