# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
 respond_to :json

#  Every instance method after the keyword private makes those methods private
 private

#  This method are private
  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: {
        status: {
          code: 200,
          message: 'Signed Up Successfully.'
        },
        data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
      }
    else
      render json: {
        status: {
          message: "User could not be created successfully. #{resource.errors.full_messages.to_sentence}"}
        }, status: :unprocessable_entity
    end

      
  end


end
