module Sample
  class API < Grape::API
    format :json
    resource :api do
      get :sample do
        "hello world"
      end
      get :sample2 do
        "hello world2"
      end
    end
  end
end