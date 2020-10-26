class ApplicationController < ActionController::API
  def pundit_user
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      decoded = JsonWebToken.decode(header)
      User.find(decoded['id'])
    rescue ActiveRecord::RecordNotFound
      render json: { message: 'You are not authorized' }, status: :unauthorized
    rescue JWT::DecodeError
      render json: { message: 'Unauthorized access' }, status: :unauthorized
    end
  end
end
