class FraisprosController < ApplicationController
  before_action :set_fraispro, only: [:show, :edit, :update, :destroy]

  # GET /fraispros
  # GET /fraispros.json
  def index
    @fraispros = Fraispro.all
  end

  # GET /fraispros/1
  # GET /fraispros/1.json
  def show
  end

  # GET /fraispros/new
  def new
    @fraispro = Fraispro.new
  end


  def edit
  end
  
  def duplicate
    @fraispro = Fraispro.find(params[:id]).dup
  end

  # POST /fraispros
  # POST /fraispros.json
  def create
    @fraispro = Fraispro.new(fraispro_params)

    respond_to do |format|
      if @fraispro.save
        format.html { redirect_to @fraispro, notice: 'Fraispro was successfully created.' }
        format.json { render :show, status: :created, location: @fraispro }
      else
        format.html { render :new }
        format.json { render json: @fraispro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fraispros/1
  # PATCH/PUT /fraispros/1.json
  def update
    respond_to do |format|
      if @fraispro.update(fraispro_params)
        format.html { redirect_to @fraispro, notice: 'Fraispro was successfully updated.' }
        format.json { render :show, status: :ok, location: @fraispro }
      else
        format.html { render :edit }
        format.json { render json: @fraispro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fraispros/1
  # DELETE /fraispros/1.json
  def destroy
    @fraispro.destroy
    respond_to do |format|
      format.html { redirect_to fraispros_url, notice: 'Fraispro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fraispro
      @fraispro = Fraispro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fraispro_params
      params.require(:fraispro).permit(:nature, :facture, :compte, :bank, :date, :montant, :description, :deductibilite, :privepro, :total)
    end
end
