# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json

#  Every instance method after the keyword private makes those methods private
private

#  This method are private
  def respond_with(resource, _opts = {})
    render json: {
      status: {
        code: 200,
        message: 'Logged In Successfully.'
      }, data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
    }, status: :ok
  end

  def respond_to_on_destroy
    if current_user
      render json: {
        status: 200,
        message: "Logged Out Successfully"
      }, status: :ok
    else
      render json: {
        status: 401,
        message: "Could not find an active session."
      }, status: :unauthorized
    end
  end
  
end
