class ReservaProductosController < ApplicationController
  before_filter :authenticate_user!, :only => [:new]

  
  # GET /reserva_productos
  # GET /reserva_productos.json
  def index
    @reserva_productos = ReservaProducto.where(activo: true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reserva_productos }
    end
  end

  # GET /reserva_productos/1
  # GET /reserva_productos/1.json
  def show
    @reserva_producto = ReservaProducto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reserva_producto }
    end
  end

  # GET /reserva_productos/new
  # GET /reserva_productos/new.json
  def new
    @reserva_producto = ReservaProducto.new(params[:reserva_producto])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reserva_producto }
    end
  end

  # GET /reserva_productos/1/edit
  def edit
    @reserva_producto = ReservaProducto.find(params[:id])
  end

  # POST /reserva_productos
  # POST /reserva_productos.json
  def create
    @reserva_producto = ReservaProducto.new(params[:reserva_producto])
    @reserva_producto.user_id = current_user.id
    @reserva_producto.activo = true;

    respond_to do |format|
      if @reserva_producto.save
        format.html { redirect_to @reserva_producto, notice: 'Reserva realizada correctamente. Tienes 24hrs para pasar por la tienda.' }
        format.json { render json: @reserva_producto, status: :created, location: @reserva_producto }
      else
        format.html { render action: "new" }
        format.json { render json: @reserva_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reserva_productos/1
  # PUT /reserva_productos/1.json
  def update
    @reserva_producto = ReservaProducto.find(params[:id])

    respond_to do |format|
      if @reserva_producto.update_attributes(params[:reserva_producto])
        format.html { redirect_to @reserva_producto, notice: 'Reserva producto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reserva_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserva_productos/1
  # DELETE /reserva_productos/1.json
  def destroy
    @reserva_producto = ReservaProducto.find(params[:id])
    @reserva_producto.destroy

    respond_to do |format|
      format.html { redirect_to reserva_productos_url }
      format.json { head :no_content }
    end
  end
end
