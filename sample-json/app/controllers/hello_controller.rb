class HelloController < ApplicationController
  def index
    sample = {'name' => 'abc', 'age' => 123}

    render :json => sample
  end
end
