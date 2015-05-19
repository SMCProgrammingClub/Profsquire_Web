class Api::ProfessorsController < ApplicationController
  def index
    'render json: Professor.all'
  end
end
