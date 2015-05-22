module Courses
  class Data < Grape::API
    resource :courses_data do
      desc "list"

      get do
        Course.all
      end

      desc "Returns an item by its id."
      get '/:id' do
        course = Course.where(professor_id: params[:id] )
      end
    end
  end
end