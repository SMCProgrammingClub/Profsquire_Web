module Professors
  class Data < Grape::API

    resource :professors_data do

      desc "list"

      get do
        Professor.all
      end

      desc "Returns an item by its id."
      get '/:id' do
        professor = Professor.find(params[:id])
      end
    end
  end
end