class WelcomeController < ApplicationController
  def index
    @stations = CloseStation.all_stations(80203)
  end
end
