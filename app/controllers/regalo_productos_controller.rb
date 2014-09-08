class RegaloProductosController < ApplicationController
  # GET /regalo_productos
  # GET /regalo_productos.json
  def index
    @regalo_productos = RegaloProducto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @regalo_productos }
    end
  end

  # GET /regalo_productos/1
  # GET /regalo_productos/1.json
  def show
    @regalo_producto = RegaloProducto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @regalo_producto }
    end
  end

  # GET /regalo_productos/new
  # GET /regalo_productos/new.json
  def new
    @regalo_producto = RegaloProducto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @regalo_producto }
    end
  end

  # GET /regalo_productos/1/edit
  def edit
    @regalo_producto = RegaloProducto.find(params[:id])
  end

  # POST /regalo_productos
  # POST /regalo_productos.json
  def create
    @regalo_producto = RegaloProducto.new(params[:regalo_producto])

    respond_to do |format|
      if @regalo_producto.save
        format.html { redirect_to @regalo_producto, notice: 'Regalo producto was successfully created.' }
        format.json { render json: @regalo_producto, status: :created, location: @regalo_producto }
      else
        format.html { render action: "new" }
        format.json { render json: @regalo_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /regalo_productos/1
  # PUT /regalo_productos/1.json
  def update
    @regalo_producto = RegaloProducto.find(params[:id])

    respond_to do |format|
      if @regalo_producto.update_attributes(params[:regalo_producto])
        format.html { redirect_to @regalo_producto, notice: 'Regalo producto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @regalo_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regalo_productos/1
  # DELETE /regalo_productos/1.json
  def destroy
    @regalo_producto = RegaloProducto.find(params[:id])
    @regalo_producto.destroy

    respond_to do |format|
      format.html { redirect_to regalo_productos_url }
      format.json { head :no_content }
    end
  end
end
