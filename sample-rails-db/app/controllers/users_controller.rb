class UsersController < ApplicationController
  def index
  	@user = User.find_by(:name => "aaa")
  end
end
