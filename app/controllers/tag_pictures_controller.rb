class Tag_PicturesController < ApplicationController

  def index

  end

  def _new
    @tag_picture = Tag_Picture.new
    @tags = Tag.all
  end

end
