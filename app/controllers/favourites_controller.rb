class FavouritesController < ApplicationController
  def index
    user = User.find_by(token: params[:token])
    render json: user.venues
  end

  def create
    user = User.find_by(token: params[:token])
    favourite = Favourite.new(user_id:user.id,weddingvenue_id:params[:weddingvenue_id])

    if favourite.save
      render json: 'we added to your favourites'
    else
      render json: favourite.errors.full_messages
    end
  end

  def destroy
    user = User.find_by(token: params[:token])

    favourite = user.favourites.find(params[:id])
    render json: 'we deleted it from  your favourites' if favourite.destroy
  end

end
