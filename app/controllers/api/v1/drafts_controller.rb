class Api::V1::DraftsController < ApplicationController

  def create
    @draft = Draft.find_or_create_by(user_id: params[:user_id], player_id: params[:player_id])
    render json: @draft
  end

  def index
    @all = Draft.all
    render json: @all
  end

  def show
    @draft = Draft.find(params[:id])
    render json: @draft
  end

  def destroy
    @draft = Draft.find(params[:id])
    @draft.destroy
  end
end
