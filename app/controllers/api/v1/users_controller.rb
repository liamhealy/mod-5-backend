class Api::V1::UsersController < ApplicationController
    
    def show
        # render json: { user: User.find_by(username: params[:id]) }
        user = User.find_by(username: params[:id])
        options = {
            include: [:posts, :responses, :streamers, :stream_followers]
        }
        render json: UserSerializer.new(user, options)
        # render json: {user: user}
    end

    def create
        user = User.new(create_params[:user])
        if user.save
            render json: { user: user }
        else
            render json: { error: "Something went wrong..." }
        end
    end

    def update
        user = User.find_by(id: params[:id])
        if user.update(update_params[:user])
            render json: { user: user }
        else
            render json: { error: "Something went wrong..." }
        end
    end

    def destroy
        user = User.find_by(id: params[:id])
        puts "Destroying #{user.username}: #{user.first_name} #{user.last_name} "
        if user.destroy
            render json: { message: "User has been removed." }
        else
            render json: { error: "Unable to remove that user..." }
        end
    end

    # ----------------------------------
    #-----------------------------------
    private #---------------------------
    #-----------------------------------
    # ----------------------------------

    def create_params
        params.permit(
            user: [
                :username, :first_name, :last_name, :email
            ]
        )
    end

    def update_params
        params.permit(
            user: [
                :id, :username, :first_name, :last_name, :email
            ]
        )
    end
end
