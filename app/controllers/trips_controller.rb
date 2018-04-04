class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
  end

  def show
    @trip = Trip.find(id)
  end

  def edit
    @trips = Trip.find_by(id: params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end
end
