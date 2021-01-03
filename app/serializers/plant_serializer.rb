class PlantSerializer
  include JSONAPI::Serializer
  attributes :name, :latin_name, :watering, :pest_and_disease, :pruning, :description, :light, :fertilization, :temp_low, :temp_hi, :room, :soil, :seasons
end
