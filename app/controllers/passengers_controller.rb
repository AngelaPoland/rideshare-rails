class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def new
    @passenger = Passenger.new
  end

  def show
    id = params[:id]
    @passenger = Passenger.find(id)
  end

  def edit
    @passenger = Passenger.find_by(id: params[:id])
  end

  def create
    passenger = Passenger.new
    passenger.name = params[:passenger][:name]
    passenger.phone_num = params[:passenger][:phone_num]

    if passenger.save # == true - it worked!
      id = passenger.id
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
