class UsersController < ApplicationController
    
    def show
        render json: User.find_by(username: params[:id])
    end

end
