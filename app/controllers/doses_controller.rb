class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    raise
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
  end

  def destroy
    @dose = Dose.destroy
  end

private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
