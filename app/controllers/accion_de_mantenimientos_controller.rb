class AccionDeMantenimientosController < ApplicationController
  before_action :set_accion_de_mantenimiento, only: [:show, :edit, :update, :destroy]

  # GET /accion_de_mantenimientos
  # GET /accion_de_mantenimientos.json
  def index
    @accion_de_mantenimientos = AccionDeMantenimiento.all
  end

  # GET /accion_de_mantenimientos/1
  # GET /accion_de_mantenimientos/1.json
  def show
  end

  # GET /accion_de_mantenimientos/new
  def new
    @accion_de_mantenimiento = AccionDeMantenimiento.new
  end

  # GET /accion_de_mantenimientos/1/edit
  def edit
  end

  # POST /accion_de_mantenimientos
  # POST /accion_de_mantenimientos.json
  def create
    @accion_de_mantenimiento = AccionDeMantenimiento.new(accion_de_mantenimiento_params)

    respond_to do |format|
      if @accion_de_mantenimiento.save
        format.html { redirect_to @accion_de_mantenimiento, notice: 'Accion de mantenimiento was successfully created.' }
        format.json { render :show, status: :created, location: @accion_de_mantenimiento }
      else
        format.html { render :new }
        format.json { render json: @accion_de_mantenimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accion_de_mantenimientos/1
  # PATCH/PUT /accion_de_mantenimientos/1.json
  def update
    respond_to do |format|
      if @accion_de_mantenimiento.update(accion_de_mantenimiento_params)
        format.html { redirect_to @accion_de_mantenimiento, notice: 'Accion de mantenimiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @accion_de_mantenimiento }
      else
        format.html { render :edit }
        format.json { render json: @accion_de_mantenimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accion_de_mantenimientos/1
  # DELETE /accion_de_mantenimientos/1.json
  def destroy
    @accion_de_mantenimiento.destroy
    respond_to do |format|
      format.html { redirect_to accion_de_mantenimientos_url, notice: 'Accion de mantenimiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accion_de_mantenimiento
      @accion_de_mantenimiento = AccionDeMantenimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accion_de_mantenimiento_params
      params.require(:accion_de_mantenimiento).permit(:ficha_de_equipo_id, :periodicidad, :descripcion)
    end
end
