class GroceryController < ApplicationController

def index
    @recipe = Recipe.all
  end

end
