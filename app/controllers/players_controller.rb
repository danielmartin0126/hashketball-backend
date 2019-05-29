class PlayersController < ApplicationController

    def index
        @players = Player.all
        render json: @players
      end

    def show
    
    end





end
