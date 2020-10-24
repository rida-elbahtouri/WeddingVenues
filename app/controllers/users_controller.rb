class UsersController < ApplicationController
  def create
    user = User.new(userparams)
    if user.save
      render json: {
        token: user.token
      }
    else
      render json: {
        error: user.errors.full_messages
      }
    end
  end

  private

  def userparams
    # require(:user).
    params.permit(:username, :password, :password_confirmation)
  end
end
