class SearchController < ApplicationController

  def new

    @q = Quantity.ransack(params[:q])
    @Ingredient = @q.result(:distinct => true).includes(:ingredient, :recipe)

  end

  def show

    #input search logic

  end

end

