class UsersController < ApplicationController

  def index
    @pictures = Picture.find_by_user(current_user.id)
  end

  def show
    @user = User.find(params[:slug].to_i)
    #@pictures = Picture.find_by_user(params[:slug])
  end

end
