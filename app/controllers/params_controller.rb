class ParamsController < ApplicationController
      before_action :set_param, only: [:show, :edit, :update, :destroy]

  def index
    @params = Param.all
  end
  
  def show
  end


  def new
    @param = Param.new
  end


  def edit
  end
  
  def create
    @param = Param.new(param_params)

    respond_to do |format|
      if @param.save
        format.html { redirect_to params_path, notice: "Tout s'est bien passé: catégorie créé." }
        format.json { render :index, status: :created, location: @param }
      else
        format.html { render :new }
        format.json { render json: @param.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @param.update(param_params)
        format.html { redirect_to fraispros_path}
        format.json { render :index, status: :ok, location: @param }
      else
        format.html { render :edit }
        format.json { render json: @param.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @param.destroy
    respond_to do |format|
      format.html { redirect_to params_url, notice: 'Catégorie correctement supprimée.' }
      format.json { head :no_content }
    end
  end

  private
    def set_param
      @param = Param.find(params[:id])
    end

    def param_params
      params.require(:param).permit(:trifraispro, :user)
    end
end
