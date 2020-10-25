class RevenusController < ApplicationController
  include ActionView::Helpers::NumberHelper
  def index
     @caca = Revenu.all
     @cacaNew = Revenu.new
  end
  
  def create
    @cacaNew = Revenu.new(revenu_params)
    @cacaNew.save
    salaire = number_to_currency(Revenu.last.salaire, :unit => "€", locale: :fr, precision: 0)
    revenuindep = number_to_currency(Revenu.last.revenuindep, :unit => "€", locale: :fr, precision: 0)
      redirect_to revenus_path, notice: "Revenu indépendant de " + revenuindep + " et salarié de " + salaire + " a bien été enregistré en base de donnée"
  end
  
  def destroy
    @revenu = Revenu.find(params[:id])
    p = params[:revenu].inspect
    @revenu.destroy
  end
    
  def show
    @revenu = Revenu.find(params[:id])
    p = params[:revenu].inspect
    redirect_to revenu_path, notice: (p + " ==> a été supprimé de la base de donnée")
  end
  
  private
  
  def revenu_params
    params.require(:revenu).permit(:salaire, :revenuindep)
  end
  
end
