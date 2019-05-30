class Api::V1::DraftsController < ApplicationController

  def create
    draft = Draft.find_or_create_by(user_id: params[:user_id], player_id: params[:player_id])
  end

  def index
    @all = Draft.all
    render json: @all
  end



end
