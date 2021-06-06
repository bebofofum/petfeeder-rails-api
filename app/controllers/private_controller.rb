class PrivateController < ApplicationController
  before_action :authenticate_user!

  # The above is the authenticate user helper method that will be called before the below action can be utilized
  # This is a test controller to test the authenticate token process

  def test
    render json: {
      message: "This is a private message for #{current_user.email} you should only see if you've got a correct token"
    }
  end

end
