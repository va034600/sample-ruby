class UsersController < ApplicationController
  def index
  	@user = User.find_by(:name => "aaa")
  end

  def index2
  	@user = User.find_by(:name => params[:name])
  end
end
