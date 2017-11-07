class CategoriesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @pictures = Picture.find_by_category(params[:id])
    @tags = []
    @pictures.each do |picture|
      tag = TagPicture.findByPictures(picture.id)
      @tags += tag
    @category = Category.find_by_id(params[:id])
    end

  end

end
