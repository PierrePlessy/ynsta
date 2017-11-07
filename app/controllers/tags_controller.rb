class TagsController < ApplicationController

  def index
    @pictures = Picture.find_by_category(params[:id])
  end

  def show
    @pictures = Picture.find_by_tag(params[:id])
    @tag = Tag.find_by_id(params[:id])
  end

end
