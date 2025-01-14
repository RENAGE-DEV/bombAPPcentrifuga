class MaintenancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pump, only: [:new, :create]

  def new
    @maintenance = @pump.maintenances.build
  end

  def create
    @maintenance = @pump.maintenances.build(maintenance_params)
    
    if @maintenance.save
      redirect_to @pump, notice: 'Mantenimiento registrado exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_pump
    @pump = Pump.find(params[:pump_id])
  end

  def maintenance_params
    params.require(:maintenance).permit(
      :maintenance_reason_id,
      :maintenance_date,
      :description
    )
  end

  def destroy
    @pump = Pump.find(params[:pump_id])
    @maintenance = @pump.maintenances.find(params[:id])
    @maintenance.destroy
  
    respond_to do |format|
      format.html { redirect_to pump_path(@pump), notice: 'Mantenimiento eliminado exitosamente.' }
      format.json { head :no_content }
    
    end
  end
end