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
      @trip.passenger = Passenger.find_by(id: params[:passenger_id])
      ##### whyyyyyyyy can't I find passenger by its id?!
      #have also tried:
      #Passenger.find_by(id: params[:id])
      #Passenger.find(:passenger_id)
      #setting id = param[:passenger_id] then Passenger.find(id)
      @trip.driver = Driver.all.sample #this needs to change to available_driver method in driver model eventually
      # Trip.available_driver ?
      @trip.rating = params[:rating]
      @trip.cost = rand(100..1000)
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

  private

  def trip_params
     return params.require(:trip).permit(:driver, :passenger, :rating, :cost, :date)
  end


end
