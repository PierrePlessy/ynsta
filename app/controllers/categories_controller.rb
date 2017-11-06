class CategoriesController < ApplicationController

  def index
    @pictures = Picture.findByCategories(params[:id])
  end

  def show
    @pictures = Picture.findByCategories(params[:id])
    @tags = []
    @pictures.each do |picture|
      tag = TagPicture.findByPictures(picture.id)
      @tags += tag
    end

  end

end
