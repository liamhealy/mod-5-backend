class Api::V1::StreamersController < ApplicationController

    def show
        streamer = Streamer.find_by(name: params[:id])
        options = {
            include: [:stream_followers]
        }
        render json: StreamerSerializer.new(streamer, options)
    end

end
