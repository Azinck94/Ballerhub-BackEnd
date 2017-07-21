class BallersController < ApplicationController
  before_action :set_baller, only: [:show, :update, :destroy]

  # GET /ballers
  # GET /ballers.json
  def index
    @ballers = Baller.all

    render json: @ballers
  end

  # GET /ballers/1
  # GET /ballers/1.json
  def show
    render json: @ballers
  end

  # POST /ballers
  # POST /ballers.json
  def create
    @baller = Baller.new(baller_params)

    if @baller.save
      render json: @baller, status: :created, location: @baller
    else
      render json: @baller.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ballers/1
  # PATCH/PUT /ballers/1.json
  def update
    @baller = Baller.find(params[:id])

    if @baller.update(baller_params)
      head :no_content
    else
      render json: @baller.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ballers/1
  # DELETE /ballers/1.json
  def destroy
    @baller.destroy

    head :no_content
  end

  private

  def set_baller
    @baller = Baller.find(params[:id])
  end

  def baller_params
    params.require(:baller).permit(:first_name, :last_name, :team, :position, :buckets, :rpg, :apg, :sponsors, :shoes)
  end
end
