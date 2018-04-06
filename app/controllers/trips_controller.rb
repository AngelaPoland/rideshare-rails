require 'date'

class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def show
    @trip = Trip.find_by(id: params[:id])
  end

  def edit
    @trip = Trip.find_by(id: params[:id])
  end

  def create
    # if params[:passenger_id]
      @trip = Trip.new
      @trip.passenger = Passenger.all.sample #Passenger.find_by(id: params[:passenger_id])
      @trip.driver = Driver.all.sample
      @trip.rating = params[:rating]
      @trip.cost = rand(5..100)
      @trip.date = Date.today


    if @trip.save! # == true - it worked!
      redirect_to passenger_path(@trip.passenger)
    else
      render :new
    end
  end

  def update

  end

  def destroy
  end
end
