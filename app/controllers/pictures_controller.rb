class PicturesController < ApplicationController

  def index
    @pictures = Picture.search(params)
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      redirect_to '/'
    else
      # raise @picture.errors.inspect
      render template: uplaod_path
    end
  end

private
  def picture_params
    params.required(:picture).permit(:category_id, :image, tag_ids: [] ).merge(user_id: current_user.id)
  end

end
