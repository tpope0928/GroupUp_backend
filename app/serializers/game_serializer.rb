class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :genre, :skill_level, :game_name, :players
end
