class RevistaMensualsController < ApplicationController
  # GET /revista_mensuals
  # GET /revista_mensuals.json
  def index
    @revista_mensuals = RevistaMensual.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @revista_mensuals }
    end
  end

  # GET /revista_mensuals/1
  # GET /revista_mensuals/1.json
  def show
    @revista_mensual = RevistaMensual.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @revista_mensual }
    end
  end

  # GET /revista_mensuals/new
  # GET /revista_mensuals/new.json
  def new
    @revista_mensual = RevistaMensual.new
    @revista_mensual.portada_revistum_id = params[:portada_revistum_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @revista_mensual }
    end
  end

  # GET /revista_mensuals/1/edit
  def edit
    @revista_mensual = RevistaMensual.find(params[:id])
  end

  # POST /revista_mensuals
  # POST /revista_mensuals.json
  def create
    @revista_mensual = RevistaMensual.new(params[:revista_mensual])

    respond_to do |format|
      if @revista_mensual.save
        format.html { redirect_to @revista_mensual.portada_revistum, notice: 'Pagina creada correctamente.' }
        format.json { render json: @revista_mensual, status: :created, location: @revista_mensual }
      else
        format.html { render action: "new" }
        format.json { render json: @revista_mensual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /revista_mensuals/1
  # PUT /revista_mensuals/1.json
  def update
    @revista_mensual = RevistaMensual.find(params[:id])

    respond_to do |format|
      if @revista_mensual.update_attributes(params[:revista_mensual])
        format.html { redirect_to @revista_mensual.portada_revistum, notice: 'Pagina actualizada correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @revista_mensual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revista_mensuals/1
  # DELETE /revista_mensuals/1.json
  def destroy
    @revista_mensual = RevistaMensual.find(params[:id])
    @revista_mensual.destroy

    respond_to do |format|
      format.html { redirect_to revista_mensuals_url }
      format.json { head :no_content }
    end
  end
end
