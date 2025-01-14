class PumpsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pump, only: [:show, :edit, :update, :destroy]

  def destroy
    @pump = Pump.find(params[:id])
    @pump.destroy
    redirect_to pumps_path, notice: 'Bomba eliminada exitosamente.'
  end
 
  
  def index
    @pumps = Pump.includes(:client).all
  end

  def show
  end

  def new
    @pump = Pump.new
  end

  def edit
  end

  def create
    @pump = Pump.new(pump_params)
    if @pump.save
      redirect_to @pump, notice: 'Bomba creada exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @pump.update(pump_params)
      redirect_to @pump, notice: 'Bomba actualizada exitosamente.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pump.destroy
    redirect_to pumps_url, notice: 'Bomba eliminada exitosamente.'
  end

  private

  def set_pump
    @pump = Pump.find(params[:id])
  end

  def pump_params
    params.require(:pump).permit(:model, :name, :length, :material, :client_id)
  end
end