class TagsController < ApplicationController

  def index
    @pictures = Picture.findByCategories(params[:id])
  end

  def show
    tpictures = TagPicture.findByTags(params[:id])
    @pictures = []
    @tags = []

    # Search pictures by tag
    tpictures.each do |tpic|
      pictu = Picture.findById(tpic.picture.id)
      @pictures += pictu
    end

    #Search all the tags for all the picture
    @pictures.each do |picture|
      tag = TagPicture.findByPictures(picture.id)
      @tags += tag
    end

  end

end
