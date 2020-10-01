# frozen_string_literal: true

class Api::V1::PlayersController < ApplicationController
  wrap_parameters :player, include: %i[name city state game_ids]

  def index
    players = Player.all
    render json: PlayerSerializer.new(players)
  end

  def create
    player = Player.new(player_params)
    if player.save
      render json: PlayerSerializer.new(player), status: :accpeted
    else
      render json:  { errors: player.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :city, :state, :game_ids => [])
  end
end
