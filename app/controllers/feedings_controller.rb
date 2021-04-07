class FeedingsController < ApplicationController
  before_action :set_feeding, only: [:show, :update, :destroy]

  # GET /feedings
  def index
    if params[:pet_id]
      @feedings = Pet.find_by_id(params[:pet_id]).feedings
    else
      @feedings = Feeding.all
    end

    # @feedings = Feeding.all

    render json: @feedings
  end

  # GET /feedings/new
  def new
    @pet = Pet.find_by_id(params[:pet_id])
    if @pet
      @feeding = @pet.feedings.build
    else
      @feeding = Feeding.new
    end

  end

  # GET /feedings/1
  def show
    render json: @feeding
  end

  # POST /feedings
  def create
    @feeding = Feeding.new(feeding_params)

    if @feeding.save
      render json: @feeding, status: :created, location: @feeding
    else
      render json: @feeding.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /feedings/1
  def update
    if @feeding.update(feeding_params)
      render json: @feeding
    else
      render json: @feeding.errors, status: :unprocessable_entity
    end
  end

  # DELETE /feedings/1
  def destroy
    @feeding.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feeding
      @feeding = Feeding.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def feeding_params
      params.require(:feeding).permit(:description, :category, :completed, :pet_id, :owner_id)
    end
end
