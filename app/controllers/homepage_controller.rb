class HomepageController < ApplicationController
  def index
    @pictures = Picture.all
    @tags = []
    @pictures.each do |picture|
      tag = TagPicture.findByPictures(picture.id)
      @tags += tag
    end
  end
end
