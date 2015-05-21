class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  format :json
  default_format :json
  mount Professors::Data
  mount Courses::Data
  mount Attributes::Data
end