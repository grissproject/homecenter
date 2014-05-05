class HomeController < ApplicationController
  def index
    @imagen_portadas = ImagenPortada.all
  end
end
