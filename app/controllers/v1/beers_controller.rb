class V1::BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find_by(id: params[:id])
  end

  def create
    @beer = Beer.create(name: params[:name], style: params[:style], hop: params[:hop],
     yeast: params[:yeast], malts: params[:malts], ibu: params[:ibu], alcohol: params[:alcohol])
    render :show
  end

  def update
    @beer = Beer.find_by(id: params[:id])
    @beer.assign_attributes(name: params[:name], style: params[:style], hop: params[:hop],
    yeast: params[:yeast], malts: params[:malts], ibu: params[:ibu], alcohol: params[:alcohol])
    @beer.save
    render :show
    # @beer.update_attributes(name: params[:name], style: params[:style], hop: params[:hop],
    # yeast: params[:yeast], malts: params[:malts], ibu: params[:ibu], alcohol: params[:alcohol])
    # # or use update_attributes so you dont have to save it
  end

  def destroy
    # @beer = Beer.find_by(id: params[:id])
    # or use 'find' which finds by id
    @beer = Beer.find(params[:id])
    @beer.destroy
    redirect_to "/beer"
    # could also give message that it was deleted successfully: render json: { message: "Employee "#{beer.id}" successfully deleted!"}
  end
end
