class UsersController < ApplicationController
  def index
    User.all.to_json

  end

end
