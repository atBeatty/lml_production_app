class ProductionsController < ApplicationController
  before_action :set_production, only: [:show, :update, :destroy]

  def index
    @productions = Production.all

    render json: @productions, include: [:crew, :crew_members]
  end

  def show
    render json: @production
  end

  def create
    @production = Production.new(production_params)

    if @production.save
      render json: @production, status: :created, location: @production
    else
      render json: @production.errors, status: :unprocessable_entity
    end
  end

  def update
    if @production.update(production_params)
      render json: @production
    else
      render json: @production.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @production.destroy
  end

  private
    def set_production
      @production = Production.find(params[:id])
    end

    def production_params
      params.require(:production).permit(:name, :client, :crew_id)
    end
end
