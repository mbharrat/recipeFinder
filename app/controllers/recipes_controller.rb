class RecipesController < ApplicationController
  def index
  	@search_term = params[:search] || 'chicken'
  	@recipes = Recipe.for(@search_term)
  end
end
