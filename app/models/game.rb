# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :usernames
  has_many :players, through: :usernames

  accepts_nested_attributes_for :players
end
