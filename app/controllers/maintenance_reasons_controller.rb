class MaintenanceReasonsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_maintenance_reason, only: [:show, :edit, :update, :destroy]

  def index
    @maintenance_reasons = MaintenanceReason.all
  end

  def show
  end

  def new
    @maintenance_reason = MaintenanceReason.new
  end

  def edit
  end

  def create
    @maintenance_reason = MaintenanceReason.new(maintenance_reason_params)
    if @maintenance_reason.save
      redirect_to maintenance_reasons_path, notice: 'Razón de mantenimiento creada exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @maintenance_reason.update(maintenance_reason_params)
      redirect_to maintenance_reasons_path, notice: 'Razón de mantenimiento actualizada exitosamente.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @maintenance_reason.destroy
      redirect_to maintenance_reasons_path, notice: 'Razón de mantenimiento eliminada exitosamente.'
    else
      redirect_to maintenance_reasons_path, alert: 'No se pudo eliminar la razón de mantenimiento.'
    end
  end

  private

  def set_maintenance_reason
    @maintenance_reason = MaintenanceReason.find(params[:id])
  end

  def maintenance_reason_params
    params.require(:maintenance_reason).permit(:name)
  end
end