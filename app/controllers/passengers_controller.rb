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
    @passenger = Passenger.new
    @passenger.name = params[:passenger][:name]
    @passenger.phone_num = params[:passenger][:phone_num]

    if @passenger.save # == true - it worked!
      id = @passenger.id
      redirect_to passenger_path(id)
    else
      render :new
    end
  end

  def update
    passenger = Passenger.find_by(id: params[:id])
    passenger.name = params[:passenger][:name]
    passenger.phone_num = params[:passenger][:phone_num]
    if passenger.save
      redirect_to passenger_path
    else
      render :edit
    end
  end

  def destroy
  end

  def deactivated
    @passenger = Passenger.find(params[:passenger_id] || params[:id])
    if @passenger.deactivated == false
      @passenger.deactivated = true
    else
      @passenger.deactivated = false
    end
    @passenger.save
    # @passenger.update(deactivated: true)  <== this is same as above but without ability to switch between activated and deactivated - lets talk about which we want to do.

    redirect_to passenger_path(@passenger.id)
  end


end
