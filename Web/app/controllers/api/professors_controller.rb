class Api::ProfessorsController < ApplicationController

  def index
    render json: Professor.all
  end

  def show
    professor = Professor.find(params[:id])
    render json: professor
  end
end
