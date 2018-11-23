class TruckInfoSerializer < ActiveModel::Serializer
  attributes *TruckInfo.column_names
end
