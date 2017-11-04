class PicturesController < ApplicationController

  def index
    @pictures = Picture.search()
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      redirect_to '/'
    else
      render template: '/upload'
    end
  end



private
  def listing_params
    params.required(:picture).permit(:id_category, :image).merge(id_user: current_user.id)
  end

end
