module Sample
  class API < Grape::API
    format :json

    helpers do
      def authenticate_error!
        h = {}
        error!('未ログイン', 401, h)
      end

      def authenticate_user!
        uid = request.headers['Uid']
        token = request.headers['Access-Token']
        client = request.headers['Client']
        @user = User.find_by_uid(uid)

        unless @user && @user.valid_token?(token, client)
          authenticate_error!
        end
      end
    end

    get :sample do
      authenticate_user!
      {message: 'test'}
    end
  end
end