class Api::CoursesController < ApplicationController

  def index
    render json: Course.all
  end

  def show

    course = Course.where(professor_id: params[:id])
    professor = Professor.find(params[:id])

    render :json => {
               :Course => course,
               :ProfessorName => professor,
           }
  end
end