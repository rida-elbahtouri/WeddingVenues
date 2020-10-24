class LogsController < ApplicationController
  def create
    user = User
      .find_by(username: params['username'])
      .try(:authenticate, params['password'])
    if user
      user.regenerate_token
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

  def user_params
    params.permit(:username, :password)
  end
end
