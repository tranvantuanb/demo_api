class TruckInfo < ApplicationRecord
  ATTRIBUTE_PARAMS = [:id, :truck_plate, :cargo_type, :driver, :truck_type, :price,
    :dimension, :parking_address, :production_year, :status, :description, :created_at, :updated_at]
end
