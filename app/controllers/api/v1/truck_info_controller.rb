class Api::V1::TruckInfoController < ApplicationController
  before_action :get_truck_info, only: [:show, :update, :destroy]

  def index
    if params[:query]
      trucks = TruckInfo.where("driver like (?) OR parking_address like (?)
        OR production_year = (?) OR truck_plate like (?)", "%#{params[:query]}%",
        "%#{params[:query]}%", "%#{params[:query]}%", "%#{params[:query]}%")
    else
      trucks = TruckInfo.all
    end

    render json: {truck_info: trucks}
  end

  def show
    truck_info = TruckInfoSerializer.new(@truck_info).as_json
    render json: {truck_info: truck_info}
  end

  def create
    @truck_info = TruckInfo.new(truck_info_params)
    if @truck_info.save
      render json: @truck_info, status: :created, location: api_v1_truck_info_url(@truck_info)
    else
      render json: @truck_info.errors, status: :unprocessable_entity
    end
  end

  def update
    if @truck_info.update(truck_info_params)
      render json: @truck_info
    else
      render json: @truck_info.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @truck_info.destroy
  end

  private
  def truck_info_params
    params.require(:truck_info).permit(TruckInfo::ATTRIBUTE_PARAMS)
  end

  def get_truck_info
    @truck_info = TruckInfo.find(params[:id])
  end
end
