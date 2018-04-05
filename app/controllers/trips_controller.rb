require 'date'

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
    if params[:passenger_id]
      @trip = Trip.new
      @trip.driver = Driver.available_drivers.sample

      @trip.rating = params[:rating]
      @trip.cost = rand(5..100)

      @trip.date = Date.today
      @trip.passenger = Passenger.find(params[:passenger_id])
    else
      @trip = Trip.new
      @trip.date = Date.today
    end

    if @passenger.save # == true - it worked!
      id = @passenger.id
      redirect_to passenger_path(id)
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end
end
