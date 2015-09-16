class UsersController < ApplicationController
  def index
  	session[:user_name] = "aaaa"
  end

  def index2
  	@user = Hash.new
  	@user[:name] = session[:user_name]
  end
end
