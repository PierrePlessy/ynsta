class FavorisController < ApplicationController
  def index
  end

  def create
    @favori = Favori.create!(favoris_params)
  end

  def destroy
    @favori = Favori.delete(params[:id])
  end

  private
    def favoris_params
      params.permit(:picture_id).merge(user_id: current_user.id)
    end
end
