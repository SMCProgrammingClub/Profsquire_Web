module User_Comment
  class Data < Grape::API
    resource :user_comment_data do
      desc "create a new attribute"
      ## This takes care of parameter validation
      params do
        requires :comment, type: String
        requires :professor_id, type:Integer
      end

      post do
        Comment.create!({
                            comment:params[:comment],
                            professor_id:params[:professor_id]
                        })
      end

      desc "read all"
      get do
        Comment.all
      end

      desc "Returns an item by its id."
      get '/:id' do
        comment = Comment.where(professor_id: params[:id] )
      end

    end
  end
end