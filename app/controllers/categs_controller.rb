class CategsController < ApplicationController
      before_action :set_categ, only: [:show, :edit, :update, :destroy]
      before_action :change_natureold, only: [:update]
      after_action :change_fraispronature, only: [:update]

  def index
    @categs = Categ.all
  end
  
  def show
  end


  def new
    @categ = Categ.new
  end


  def edit
  end
  
  def create
    @categ = Categ.new(categ_params)

    respond_to do |format|
      if @categ.save
        format.html { redirect_to categs_path, notice: "Tout s'est bien passé: catégorie créé." }
        format.json { render :index, status: :created, location: @categ }
      else
        format.html { render :new }
        format.json { render json: @categ.errors, status: :unprocessable_entity }
      end
    end
  end

  def change_natureold
    p = Categ.find(params[:id])
    p.natureold = p.nature
    p.save
  end
  
  def change_fraispronature
    old = Categ.find(params[:id]).natureold
    new = Categ.find(params[:id]).nature
    Fraispro.all.each do |f|
      if f.user == current_user.email
      if f.nature == old
        p = Fraispro.find_by_id(f.id)
        p.nature = new
        p.save
      end
      end
    end
  end
    
  def update    
    respond_to do |format|
      if @categ.update(categ_params)
        format.html { redirect_to categs_path, notice: "Mise à jour faite avec succès ! La catégorie de vos frais professionels déjà encodés a été automatiquement adaptée." }
        format.json { render :index, status: :ok, location: @categ }
      else
        format.html { render :edit }
        format.json { render json: @categ.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @categ.destroy
    respond_to do |format|
      format.html { redirect_to categs_url, notice: 'Catégorie correctement supprimée.' }
      format.json { head :no_content }
    end
  end

  private
    def set_categ
      @categ = Categ.find(params[:id])
    end

    def categ_params
      params.require(:categ).permit(:nature,:user, :souscat, :deductibilite, :natureold)
    end
end
