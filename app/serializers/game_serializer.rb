class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :genre, :skill_level, :players
end
