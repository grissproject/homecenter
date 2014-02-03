class RevistaNoviosController < ApplicationController

  before_filter :authenticate_user!, :except => [:show]

  # GET /revista_novios
  # GET /revista_novios.json
  def index
    @revista = RevistaNovio.find_by_user_id(current_user.id)
    if @revista
      redirect_to @revista
      return
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @revista_novios }
    end
  end

  # GET /revista_novios/1
  # GET /revista_novios/1.json
  def show
    @revista_novio = RevistaNovio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @revista_novio }
    end
  end

  # GET /revista_novios/new
  # GET /revista_novios/new.json
  def new
    @revista_novio = RevistaNovio.new
    @revista_novio.titulo ||= 'Mi Boda'

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @revista_novio }
    end
  end

  # GET /revista_novios/1/edit
  def edit
    @revista_novio = RevistaNovio.find(params[:id])
  end

  # POST /revista_novios
  # POST /revista_novios.json
  def create
    @revista_novio = RevistaNovio.new(params[:revista_novio])
    @revista_novio.user_id = current_user.id

    respond_to do |format|
      if @revista_novio.save
        format.html { redirect_to @revista_novio, notice: 'La Revista fue creada correctamente.' }
        format.json { render json: @revista_novio, status: :created, location: @revista_novio }
      else
        format.html { render action: "new" }
        format.json { render json: @revista_novio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /revista_novios/1
  # PUT /revista_novios/1.json
  def update
    @revista_novio = RevistaNovio.find(params[:id])

    respond_to do |format|
      if @revista_novio.update_attributes(params[:revista_novio])
        format.html { redirect_to @revista_novio, notice: 'La Revista fue actualizada correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @revista_novio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revista_novios/1
  # DELETE /revista_novios/1.json
  def destroy
    @revista_novio = RevistaNovio.find(params[:id])
    @revista_novio.destroy

    respond_to do |format|
      format.html { redirect_to revista_novios_url }
      format.json { head :no_content }
    end
  end
end
