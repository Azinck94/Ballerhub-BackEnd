class BallersController < ApplicationController
  before_action :set_baller, only: [:show, :update, :destroy]

  # GET /ballers
  def index
    @ballers = Baller.all

    render json: @ballers
  end

  # GET /ballers/1
  def show
    render json: @baller
  end

  # POST /ballers
  def create
    @baller = Baller.new(baller_params)

    if @baller.save
      render json: @baller, status: :created, location: @baller
    else
      render json: @baller.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ballers/1
  def update
    if @baller.update(baller_params)
      render json: @baller
    else
      render json: @baller.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ballers/1
  def destroy
    @baller.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baller
      @baller = Baller.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def baller_params
      params.require(:baller).permit(:first_name, :last_name, :team, :position, :buckets, :rpg, :apg, :sponsors, :shoes, :catchphrase)
    end
end
