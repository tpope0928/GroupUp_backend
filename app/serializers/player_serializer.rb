class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :city, :state, :games
end
