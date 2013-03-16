class ExtraSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :name, :trip, :orders, :trip_id
end