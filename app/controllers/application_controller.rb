class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    clients_path # o pumps_path si prefieres que vaya a bombas después del login
  end
end
