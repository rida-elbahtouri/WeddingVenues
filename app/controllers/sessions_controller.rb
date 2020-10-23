class SessionsController < ApplicationController
  include CurrentUserConcern

  def loggen_in
    if @current_user
      render json: {
        loggen_in: true,
        user: @current_user
      }
    else
      render json: {
        loggen_in: false
      }
    end
  end

  def create
    user = User
      .find_by(username: params['username'])
      .try(:authenticate, params['password'])

    if user
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

  def destroy
    reset_session
    render json: { msg: 'you loged out succesfully', logged_in: false }
  end
end
