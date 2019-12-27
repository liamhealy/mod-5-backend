class Api::V1::StreamFollowersController < ApplicationController

    def show
        stream_follower = StreamFollower.find_by(id: params[:id])
        render json: StreamFollowerSerializer.new(stream_follower)
    end

end
