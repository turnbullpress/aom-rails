class ApiController < ApplicationController
  protect_from_forgery with: :null_session
  respond_to :json

  def index
    users = { "users": User.count }

    render(json: users)
  end

end
