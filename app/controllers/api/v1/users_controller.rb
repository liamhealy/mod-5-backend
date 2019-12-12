class Api::V1::UsersController < ApplicationController
    
    def show
        render json: { user: User.find_by(username: params[:id]) }
    end

end
