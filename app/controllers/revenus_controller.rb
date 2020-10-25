class RevenusController < ApplicationController
  def index
     @caca = Revenu.all
  end
end
