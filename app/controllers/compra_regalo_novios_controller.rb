class CompraRegaloNoviosController < ApplicationController

  #before_filter :authenticate_user!

  def new
    @compra_regalo_novio = CompraRegaloNovio.new(params[:compra_regalo_novio])
    @reserva_regalo_novio = ReservaRegaloNovio.find(params[:reserva_regalo_novio_id])
    @reserva_regalo_novio.activo = false;

    respond_to do |format|
      if @compra_regalo_novio.save
        @reserva_regalo_novio.save
        format.html { redirect_to reserva_regalo_novios_path, notice: 'El regalo fue pagado correctamente.' }
        format.json { render json: reserva_regalo_novio_path, status: :created, location: @compra_regalo_novio }
      else
        format.html { render action: "new" }
        format.json { render json: @reserva_regalo_novio.errors, status: :unprocessable_entity }
      end
    end
  end
end