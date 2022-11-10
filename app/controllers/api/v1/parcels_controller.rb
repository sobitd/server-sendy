class Api::V1::ParcelsController < ApplicationController
 # before_action :authenticate_user!
  before_action :set_api_v1_parcel, only: %i[ show update destroy ]

  # GET /api/v1/parcels
  def index
    @api_v1_parcels = Api::V1::Parcel.all

    render json: @api_v1_parcels
  end

  # GET /api/v1/parcels/1
  def show
    render json: @api_v1_parcel
  end

  # POST /api/v1/parcels
  def create
    @api_v1_parcel = Api::V1::Parcel.new(api_v1_parcel_params)

    if @api_v1_parcel.save
      render json: @api_v1_parcel, status: :created, location: @api_v1_parcel
    else
      render json: @api_v1_parcel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/parcels/1
  def update
    if @api_v1_parcel.update(api_v1_parcel_params)
      render json: @api_v1_parcel
    else
      render json: @api_v1_parcel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/parcels/1
  def destroy
    @api_v1_parcel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_parcel
      @api_v1_parcel = Api::V1::Parcel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_parcel_params
      params.require(:api_v1_parcel).permit(:recipient_name, :recipient_contact, :weight, :from, :destination, :distance, :total_cost, :order_status)
    end
end
