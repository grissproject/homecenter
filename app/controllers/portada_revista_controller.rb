class PortadaRevistaController < ApplicationController
  # GET /portada_revista
  # GET /portada_revista.json
  def index
    @portada_revista = PortadaRevistum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @portada_revista }
    end
  end

  # GET /portada_revista/1
  # GET /portada_revista/1.json
  def show
    @portada_revistum = PortadaRevistum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @portada_revistum }
    end
  end

  # GET /portada_revista/new
  # GET /portada_revista/new.json
  def new
    @portada_revistum = PortadaRevistum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @portada_revistum }
    end
  end

  # GET /portada_revista/1/edit
  def edit
    @portada_revistum = PortadaRevistum.find(params[:id])
  end

  # POST /portada_revista
  # POST /portada_revista.json
  def create
    @portada_revistum = PortadaRevistum.new(params[:portada_revistum])

    respond_to do |format|
      if @portada_revistum.save
        format.html { redirect_to @portada_revistum, notice: 'Revista creada correctamente.' }
        format.json { render json: @portada_revistum, status: :created, location: @portada_revistum }
      else
        format.html { render action: "new" }
        format.json { render json: @portada_revistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /portada_revista/1
  # PUT /portada_revista/1.json
  def update
    @portada_revistum = PortadaRevistum.find(params[:id])

    respond_to do |format|
      if @portada_revistum.update_attributes(params[:portada_revistum])
        format.html { redirect_to @portada_revistum, notice: 'Revista actualizada.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @portada_revistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portada_revista/1
  # DELETE /portada_revista/1.json
  def destroy
    @portada_revistum = PortadaRevistum.find(params[:id])
    @portada_revistum.destroy

    respond_to do |format|
      format.html { redirect_to portada_revista_url }
      format.json { head :no_content }
    end
  end
end
