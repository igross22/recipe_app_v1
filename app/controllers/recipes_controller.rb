class RecipesController < ApplicationController

  def index
    #original
    #@recipes = Recipe.all

    # test for new search function
    #@q = Recipe.ransack(params[:q])
    #@search = @q.result(:distinct => true)

    #@q = Quantity.ransack(params[:q])
    #@search = @q.result(:distinct => true).includes(:ingredient, :recipe)

    #backup for search function
    @q = Recipe.ransack(params[:q])
    @search = @q.result(:distinct => true)
    @q.build_condition


  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
    @recipe.name = params[:name]
    @recipe.cuisine_type = params[:cuising_type]
    @recipe.cooking_method = params[:cooking_method]
    @recipe.cooking_time = params[:cooking_time]
    @recipe.source_url = params[:source_url]

    if @recipe.save
       redirect_to "/recipes", :notice => "Recipe created."
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])

  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.name = params[:name]
    @recipe.cuisine_type = params[:cuisine_type]
    @recipe.cooking_method = params[:cooking_method]
    @recipe.cooking_time = params[:cooking_time]
    @recipe.source_url = params[:source_url]

    if @recipe.save
      redirect_to :back, :notice => "Recipe updated successfully."
    else
      render 'edit'
    end

  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])

    @recipe.destroy

    redirect_to "/recipes", :notice => "Recipe deleted."
  end


end

