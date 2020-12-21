class Player < ApplicationRecord

  has_many :usernames
  has_many :games, through: :usernames

  accepts_nested_attributes_for :games

  validates :name, uniqueness: { case_sensitive: false }
end
