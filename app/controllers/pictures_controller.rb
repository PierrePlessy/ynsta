class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
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
  def picture_params
    params.required(:picture).permit(:category_id, :image).merge(user_id: current_user.id)
  end

end
