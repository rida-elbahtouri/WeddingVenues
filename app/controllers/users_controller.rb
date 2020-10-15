
class UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: @user.errors.full_messages
        end
    end
    private
    def user_params
        params.permit(:username)
    end
end