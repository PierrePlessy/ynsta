class CategoriesController < ApplicationController

  def index
    @pictures = Picture.findByCategories(params[:id])
  end

  def show
    @pictures = Picture.findByCategories(params[:id])
  end

end
