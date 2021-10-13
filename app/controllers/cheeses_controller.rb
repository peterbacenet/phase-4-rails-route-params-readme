class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end
  def show
    # byebug
    selected_cheese = Cheese.all.find_by(id: params[:id])
    render json: selected_cheese
  end

end
