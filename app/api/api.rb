class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  content_type :json, "application/json;charset=UTF-8"
  format :json
  default_format :json
  default_error_formatter :txt
  mount Professors::Data
  mount User_Comment::Data
  mount Courses::Data
  mount Attributes::Data
end