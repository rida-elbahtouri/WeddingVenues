
class WeddingvenuesController < ApplicationController

    def show
        weddingvenue=Weddingvenue.find(params[:id])
        if weddingvenue
            render json:weddingvenue
        end
    end
    def index
        render json:Weddingvenue.all
    end
    def create
        weddingvenues = Weddingvenue.new(wedding_params)
        
        if weddingvenues.save
            render json: weddingvenues
        else
            render json: ("we didn't find any user with that username")
        end
    end
    private
    def wedding_params
        params.permit(:name,:location,:description,:price,:image)
    end
end