class Home2Controller < ApplicationController
  before_action :authenticate_user!
  def index
  end
end
