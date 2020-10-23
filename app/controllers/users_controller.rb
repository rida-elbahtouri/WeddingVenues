class UsersController < ApplicationController
  def create
    user = User.new(userparams)
    if user.save
      session[:user_id] = user.id
      render json: {
        status: :created,
        loggen_in: true,
        user: user
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
