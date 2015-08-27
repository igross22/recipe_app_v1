class IngredientsController < ApplicationController

def index
    @ingredient = Ingredient.all
  end

  def new
    @ingredient = Recipe.new
  end

  def create
    @ingredient = Ingredient.new
    @ingredient.name = params[:name]


    #will have to add ingredients later

    if @ingredient.save
      redirect_to :back, :notice => "Ingredient created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])

  end

  def update
    @ingredient = Ingredient.find(params[:id])

    @ingredient.name = params[:name]


    if @ingredient.save
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


