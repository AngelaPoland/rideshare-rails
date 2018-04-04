class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def new
    @driver = Driver.new
  end

  def show
    id = params[:id]
    @driver = Driver.find(id)
  end

  def edit
  end

  def create
    driver = Driver.new
    driver.name = params[:driver][:name]
    driver.vin = params[:driver][:vin]

    if driver.save
      id = driver.id
      redirect_to driver_path(id)
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end
end
