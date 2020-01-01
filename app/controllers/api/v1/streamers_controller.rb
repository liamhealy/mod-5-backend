class Api::V1::StreamersController < ApplicationController

    def show
        streamer = Streamer.find_or_create_by(name: params[:id])
        options = {
            include: [:stream_followers]
        }
        if streamer
            render json: StreamerSerializer.new(streamer, options)
        else
            render json: {error: "No user found."}
        end
    end

    def create
        streamer = Streamer.new(create_params[:streamer])
        if streamer.save
            render json: StreamerSerializer.new(streamer)
        else
            render json: {error: "Something went wrong..."}
        end
    end

    private

    def create_params
        params.permit(
            streamer: [
                :name
            ]
        )
    end

end