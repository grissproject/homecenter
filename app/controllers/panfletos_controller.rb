class PanfletosController < ApplicationController
  # GET /panfletos
  # GET /panfletos.json
  def index
    @panfletos = Panfleto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @panfletos }
    end
  end

  # GET /panfletos/1
  # GET /panfletos/1.json
  def show
    @panfleto = Panfleto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @panfleto }
    end
  end

  # GET /panfletos/new
  # GET /panfletos/new.json
  def new
    @panfleto = Panfleto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @panfleto }
    end
  end

  # GET /panfletos/1/edit
  def edit
    @panfleto = Panfleto.find(params[:id])
  end

  # POST /panfletos
  # POST /panfletos.json
  def create
    @panfleto = Panfleto.new(params[:panfleto])

    respond_to do |format|
      if @panfleto.save
        format.html { redirect_to @panfleto, notice: 'Panfleto creado.' }
        format.json { render json: @panfleto, status: :created, location: @panfleto }
      else
        format.html { render action: "new" }
        format.json { render json: @panfleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /panfletos/1
  # PUT /panfletos/1.json
  def update
    @panfleto = Panfleto.find(params[:id])

    respond_to do |format|
      if @panfleto.update_attributes(params[:panfleto])
        format.html { redirect_to @panfleto, notice: 'Panfleto actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @panfleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panfletos/1
  # DELETE /panfletos/1.json
  def destroy
    @panfleto = Panfleto.find(params[:id])
    @panfleto.destroy

    respond_to do |format|
      format.html { redirect_to panfletos_url }
      format.json { head :no_content }
    end
  end
end
