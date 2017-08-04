class BallersController < OpenReadController
  before_action :set_baller, only: [:update, :destroy]

  # GET /ballers
  def index
    @ballers = Baller.all

    render json: @ballers
  end

  # GET /ballers/1
  def show
      @ballers = Baller.find(params[:id])
    render json: @baller
  end
#good
  # POST /ballers
  def create
    #@baller = Baller.new(baller_params)
    @baller = current_user.ballers.build(baller_params)

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
       #@baller = Baller.find(params[:id])
       @baller = current_user.ballers.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def baller_params
      params.require(:baller).permit(:first_name, :last_name, :team, :position, :buckets, :rpg, :apg, :sponsors, :shoes, :catchphrase, :user_id)
    end
end
