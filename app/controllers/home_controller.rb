class HomeController < ApplicationController
  def index
    @imagen_portadas = ImagenPortada.all
    @portada_revistums = PortadaRevistum.all
  end
end
