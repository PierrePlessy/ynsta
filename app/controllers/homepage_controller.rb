class HomepageController < ApplicationController
  def index
    @pictures = Picture.all
  end
end
