class LogsController < ApplicationController
  def create
    user = User
      .find_by(username: params['username'])

    if user &.try(:authenticate, params['password'])
      data = user.attributes
      token = JsonWebToken.encode(data)
      render json: {
        token: token
      }
    else
      render json: {
        error: 'no user with this info'
      }

    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
