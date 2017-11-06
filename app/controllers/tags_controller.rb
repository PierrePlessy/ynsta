class TagsController < ApplicationController

  def index
    @pictures = Picture.find_by_category(params[:id])
  end

  def show
    @pictures = Picture.find_by_tag(params[:id])
    # @pictures = []
    # @tags = []

    # # Search pictures by tag
    # tpictures.each do |tpic|
    #   pictu = Picture.findById(tpic.picture.id)
    #   @pictures += pictu
    # end
    #
    # #Search all the tags for all the picture
    # @pictures.each do |picture|
    #   tag = TagPicture.findByPictures(picture.id)
    #   @tags += tag
    # end

  end

end
