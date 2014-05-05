class ImagenPortadasController < ApplicationController

  before_filter :authenticate_admin!

  # GET /imagen_portadas
  # GET /imagen_portadas.json
  def index
    @imagen_portadas = ImagenPortada.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imagen_portadas }
    end
  end

  # GET /imagen_portadas/1
  # GET /imagen_portadas/1.json
  def show
    @imagen_portada = ImagenPortada.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imagen_portada }
    end
  end

  # GET /imagen_portadas/new
  # GET /imagen_portadas/new.json
  def new
    @imagen_portada = ImagenPortada.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imagen_portada }
    end
  end

  # GET /imagen_portadas/1/edit
  def edit
    @imagen_portada = ImagenPortada.find(params[:id])
  end

  # POST /imagen_portadas
  # POST /imagen_portadas.json
  def create
    @imagen_portada = ImagenPortada.new(params[:imagen_portada])

    respond_to do |format|
      if @imagen_portada.save
        format.html { redirect_to imagen_portadas_path, notice: 'Imagen de Portada creada correctamente.' }
        format.json { render json: @imagen_portada, status: :created, location: @imagen_portada }
      else
        format.html { render action: "new" }
        format.json { render json: @imagen_portada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imagen_portadas/1
  # PUT /imagen_portadas/1.json
  def update
    @imagen_portada = ImagenPortada.find(params[:id])

    respond_to do |format|
      if @imagen_portada.update_attributes(params[:imagen_portada])
        format.html { redirect_to imagen_portadas_path, notice: 'Imagen de Portada actualizada correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @imagen_portada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagen_portadas/1
  # DELETE /imagen_portadas/1.json
  def destroy
    @imagen_portada = ImagenPortada.find(params[:id])
    @imagen_portada.destroy

    respond_to do |format|
      format.html { redirect_to imagen_portadas_url }
      format.json { head :no_content }
    end
  end
end
