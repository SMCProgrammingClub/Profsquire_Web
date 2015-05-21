module Attributes
  class Data < Grape::API

    resource :attributes_data do


          desc "create a new employee"
          ## This takes care of parameter validation
          params do
            requires :accent, type: Integer
            requires :professor_id, type:Integer
            requires :book_needed, type:Boolean
          end

          ## This takes care of creating employee
          post do
            Accent.create!({
            accent:params[:accent],
            professor_id:params[:professor_id]
                        })

            BookNeeded.create!({
            book_needed:params[:book_needed],
            professor_id:params[:professor_id]
                               })

      end
    end
  end
end