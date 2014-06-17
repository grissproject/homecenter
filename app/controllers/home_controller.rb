class HomeController < ApplicationController
  def index
    @imagen_portadas = ImagenPortada.all
    @revista_mensuals = RevistaMensual.all
  end
end
