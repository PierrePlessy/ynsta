class TagsController < ApplicationController

  def index
    @pictures = Picture.find_by_category(params[:id])
  end

  def show
    @pictures = Picture.find_by_tag(params[:id])
  end

end
