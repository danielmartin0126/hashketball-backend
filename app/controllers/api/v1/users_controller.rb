class Api::V1::UsersController < ApplicationController

    def create
        @user = User.create(name: params[:username], team_name: params[:team_name], password: params[:password])
        render json: @user
    end 
end
