class Player < ApplicationRecord
  has_many :usernames
  has_many :games, through: :usernames

  accepts_nested_attributes_for :games
end
