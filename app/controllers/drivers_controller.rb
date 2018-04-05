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
    @driver = Driver.find_by(id: params[:id])
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
    driver = Driver.find_by(id: params[:id])
    driver.name = params[:driver][:name]
    driver.vin = params[:driver][:vin]
    if driver.save
      redirect_to driver_path
    else
      render :edit
    end
  end

  def destroy
  end
end
