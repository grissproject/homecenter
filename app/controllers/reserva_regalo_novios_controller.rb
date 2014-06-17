class ReservaRegaloNoviosController < ApplicationController

  before_filter :authenticate_admin!

  def index
    @reservas = ReservaRegaloNovio.where(activo: true)
    
  end

  def new
    @reserva_regalo_novio = ReservaRegaloNovio.new(params[:reserva_regalo_novio])
    @regalado = CompraRegaloNovio.sum(:monto, 
      :conditions => "revista_novio_id = '#{@reserva_regalo_novio.revista_novio.id}'
        AND producto_id = '#{@reserva_regalo_novio.producto.id}'")
    @max_a_regalar = @reserva_regalo_novio.producto.precio - @regalado;

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reserva_regalo_novio }
    end
  end

  def create
    @reserva_regalo_novio = ReservaRegaloNovio.new(params[:reserva_regalo_novio])
    @reserva_regalo_novio.user_id = current_user.id
    @reserva_regalo_novio.activo = true;

    respond_to do |format|
      if @reserva_regalo_novio.save
        format.html { redirect_to @reserva_regalo_novio.revista_novio, notice: 'La Reserva fue realizada correctamente. Debes pasar por nuestras oficinas en las proximas 24hrs para realizar el pago.' }
        format.json { render json: @reserva_regalo_novio.revista_novio, status: :created, location: @reserva_regalo_novio }
      else
        format.html { render action: "new" }
        format.json { render json: @reserva_regalo_novio.errors, status: :unprocessable_entity }
      end
    end
  end
end
