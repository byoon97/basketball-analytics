class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end
    
    def new
        user = User.new 
        render json: UserSerializer.new(user)
    end

    def create
        user = User.create(user_params)
        render json: UserSerializer.new(user)
    end

    private

    def user_params
        params.require(user).permit(:name, :age, :bio, :fav_player, :fav_team)
    end

end
