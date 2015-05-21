class Api::AttributesController < ApplicationController

  def show

   comments = Comment.where(professor_id: params[:id])

    render :json => {
               :comments => comments,
           }
  end

  def create
    comment = Comment.new(comment_params)
    comment.save

  end

  private
  def comment_params
    params.require("comment").permit( :professor_id, :comment)
  end

end