class FichaDeEquiposController < ApplicationController
  before_action :set_ficha_de_equipo, only: [:show, :edit, :update, :destroy]

  # GET /ficha_de_equipos
  # GET /ficha_de_equipos.json
  def index
    @ficha_de_equipos = FichaDeEquipo.all
  end

  # GET /ficha_de_equipos/1
  # GET /ficha_de_equipos/1.json
  def show
  end

  # GET /ficha_de_equipos/new
  def new
    @ficha_de_equipo = FichaDeEquipo.new
  end

  # GET /ficha_de_equipos/1/edit
  def edit
  end

  # POST /ficha_de_equipos
  # POST /ficha_de_equipos.json
  def create
    @ficha_de_equipo = FichaDeEquipo.new(ficha_de_equipo_params)

    respond_to do |format|
      if @ficha_de_equipo.save
        format.html { redirect_to @ficha_de_equipo, notice: 'Ficha de equipo was successfully created.' }
        format.json { render :show, status: :created, location: @ficha_de_equipo }
      else
        format.html { render :new }
        format.json { render json: @ficha_de_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ficha_de_equipos/1
  # PATCH/PUT /ficha_de_equipos/1.json
  def update
    respond_to do |format|
      if @ficha_de_equipo.update(ficha_de_equipo_params)
        format.html { redirect_to @ficha_de_equipo, notice: 'Ficha de equipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ficha_de_equipo }
      else
        format.html { render :edit }
        format.json { render json: @ficha_de_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ficha_de_equipos/1
  # DELETE /ficha_de_equipos/1.json
  def destroy
    @ficha_de_equipo.destroy
    respond_to do |format|
      format.html { redirect_to ficha_de_equipos_url, notice: 'Ficha de equipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_de_equipo
      @ficha_de_equipo = FichaDeEquipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_de_equipo_params
      params.require(:ficha_de_equipo).permit(:nombre, :descripcion_tecnica, :ref_modelo, :fabricante_id, :proveedor_id, :marca_id)
    end
end
