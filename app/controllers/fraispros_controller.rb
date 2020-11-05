class FraisprosController < ApplicationController
  before_action :set_fraispro, only: [:show, :edit, :update, :destroy]

  # GET /fraispros
  # GET /fraispros.json
  def index
    @fraispros = Fraispro.all
  end
  
  def index2
    @fraispro = Fraispro.all
  end

  # GET /fraispros/1
  # GET /fraispros/1.json
  def show
  end

  def recap
  
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

  def mois
  p = Param.find_by_user(current_user.email)
  p.trifraispro = "mois"
  p.save
  end
  
  def categorie
  p = Param.find_by_user(current_user.email)
  p.trifraispro = "categorie"
  p.save
  end


  # POST /fraispros
  # POST /fraispros.json
  def create
    @fraispro = Fraispro.new(fraispro_params)

    respond_to do |format|
      if @fraispro.save
        format.html { redirect_to fraispros_path, notice: "Tout s'est bien passé: frais créé." }
        format.json { render :index, status: :created, location: @fraispro }
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
        format.html { redirect_to fraispros_path, notice: 'Mise à jour faite avec succès !' }
        format.json { render :index, status: :ok, location: @fraispro }
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
      format.html { redirect_to fraispros_path, notice: 'Le frais a été détruit avec succès' }
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
      params.require(:fraispro).permit(:nature,:user, :facture, :compte, :bank, :date, :montant, :description, :deductibilite, :privepro, :total)
    end
end
