class Root < Grape::API
  version 'v1', using: :path
  format :json
  formatter :json, Grape::Formatter::Jbuilder
end