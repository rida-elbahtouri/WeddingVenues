
class LogsController < ApplicationController
 
    def create
        @user = User.find_by(username: params[:username])
        
        if @user
            render json: @user
        else
            render json: ("we didn't find any user with that username")
        end
    end
    private
    def user_params
        params.permit(:username)
     end
end