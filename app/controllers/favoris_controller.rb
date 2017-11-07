class FavorisController < ApplicationController
  def index
  end

  def create
      @favori = Favori.new(favoris_params)
  end

  private
    def favoris_params
      params.required(:picture_id).merge(user_id: current_user.id)
    end
end
