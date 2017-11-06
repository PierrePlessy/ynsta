class UsersController < ApplicationController

  def index
    @pictures = Picture.find_by_user(current_user.id)
  end

  def show
    @pictures = Picture.find_by_user(params[:slug])
  end

end
