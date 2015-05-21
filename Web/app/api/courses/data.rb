module Courses
  class Data < Grape::API
    resource :courses_data do
      desc "list"
      get do
        Course.all
      end

    end
  end
end