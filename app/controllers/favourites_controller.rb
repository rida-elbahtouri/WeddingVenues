class FavouritesController < ApplicationController
  before_action :pundit_user
  def index
    render json: pundit_user.venues
  end

  def create
    favourite = Favourite.new(user_id: pundit_user.id, weddingvenue_id: params[:weddingvenue_id])

    if favourite.save
      render json: 'we added to your favourites'
    else
      render json: favourite.errors.full_messages
    end
  end

  def destroy
    favourite = pundit_user.favourites.find(params[:id])
    render json: 'we deleted it from  your favourites' if favourite.destroy
  end
end
