class RevenusController < ApplicationController
  include ActionView::Helpers::NumberHelper
  def index
     @revenu = Revenu.all
     @cacaNew = Revenu.new
  end
  
  def update
    @revenu = Revenu.find(params[:id])
    @revenu.update(revenu_params)
    redirect_to revenus_path, notice: "modification enregistrée"
  end
  
  def show
  end
  
  def create
    @cacaNew = Revenu.new(revenu_params)
    @cacaNew.save
    if @cacaNew.save
        salaire = number_to_currency(Revenu.last.salaire, :unit => "€", locale: :fr, precision: 0)
        revenuindep = number_to_currency(Revenu.last.revenuindep, :unit => "€", locale: :fr, precision: 0)
      redirect_to revenus_path, notice: "Revenu indépendant de " + revenuindep + " et salarié de " + salaire + " a bien été enregistré en base de donnée"
    else
      redirect_to revenus_path,  notice: @cacaNew.errors.full_messages
    end
  end
  
  def destroy
    @revenu = Revenu.find(params[:id])
    @revenu.destroy
    redirect_to revenus_path, notice: 'Donnée supprimée' 
  end
    
  
  private
  
  def revenu_params
    params.require(:revenu).permit(:salaire, :revenuindep,:mois)
  end
  
end
