module Professors
  class Data < Grape::API

    resource :professors_data do

      desc "list"

      get do

        Professor.all


      end
    end
  end
end