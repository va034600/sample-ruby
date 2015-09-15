module Sample
  class API < Grape::API
    format :json
    resource :api do
      desc "Return sample."
      get :sample do
        "hello world"
      end
    end
  end
end