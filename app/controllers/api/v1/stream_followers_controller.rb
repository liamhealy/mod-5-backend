class Api::V1::StreamFollowersController < ApplicationController

    def show
        user = User.find_by(id: params[:id])
        # stream_follower = StreamFollower.find_by(id: params[:id])
        # options = {
        #     include: [:user, :streamer]
        # }
        # render json: StreamFollowerSerializer.new(stream_follower, options)
        render json: {following: user.stream_followers}
    end

    def create
        # streamer = Streamer.find_or_create_by(name: params[:streamer_name])
        # streamer = Streamer.find_or_create_by(id: params[:streamer_id])
        streamer = Streamer.find_by(name: params[:streamer_name])
        # byebug
        params[:stream_follower][:streamer_id] = streamer.id
        stream_follower = StreamFollower.create(create_params[:stream_follower])
        if stream_follower.save
            render json: {stream_follower: stream_follower}
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        # user = User.find_by(id: params[:user_id])
        # streamer = Streamer.find_by(name: params[:streamer_name])
        # stream_follower = StreamFollower.find_by(user_id: user.id, streamer_id: streamer.id)
        # stream_follower.destroy
        stream_follower = StreamFollower.find_by(id: params[:id])
        if stream_follower.destroy
            render json: {success: "You are no longer following this streamer."}
        else
            render json: {error: "Something went wrong."}
        end
    end

    private

    def create_params
        params.permit(
            stream_follower: [
                :user_id, :streamer_id
            ]
        )
    end

end