class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all
  end

  def show
  end

  def new
    @client = Client.new
  end

  def edit
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path, notice: 'Cliente creado exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @client.update(client_params)
      redirect_to clients_path, notice: 'Cliente actualizado exitosamente.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_path, notice: 'Cliente eliminado exitosamente.'
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end

    def client_params
      params.require(:client).permit(:name, :email, :phone, :address)
    end
end