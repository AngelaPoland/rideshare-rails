class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def new
    @passenger = Passenger.new
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
