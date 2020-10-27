class WeddingvenuesController < ApplicationController
  def show
    weddingvenue = Weddingvenue.find(params[:id])
    render json: weddingvenue if weddingvenue
  end

  def index
    render json: Weddingvenue.all
  end

  def create
    weddingvenues = Weddingvenue.new(wedding_params)

    if weddingvenues.save
      render json: weddingvenues
    else
      render json: weddingvenues.errors.full_messages
    end
  end

  private

  def wedding_params
    params.permit(:name, :location, :description, :price, :image)
  end
end
