class Api::V1::ResponsesController < ApplicationController

    def index
        # responses = Response.find_by(user_id: params[:user_id], post_id: params[:post_id])
        # serialized_responses = responses.map { |response| {user: response.user, body: response.body} }
        # if responses
        #     render json: { responses: responses}
        # else
        #     render json: { error: "Could not fetch all responses." }
        # end
    end

    def show
        # response = Response.find_by(user_id: params[:user_id], post_id: params[:post_id])
        # if response
        #     render json: { response: response, user: response.user }
        # end
    end

    def create
        response = Response.create(create_params[:response])
        if response.save
            render json: { response: response, user: response.user }
        else
            render json: { error: "Sorry, we couldn't post your response."}
        end
    end

    def update
        response = Response.find_by(id: params[:id])
        if response.update(update_params[:response])
            render json: {response: response, user: response.user}
        else
            render json: {error: "Unable to update that response right now."}
        end
    end

    def destroy

    end

    private

    def create_params
        params.permit(
            response: [
                :user_id, :post_id, :body
            ]
        )
    end

    def update_params
        params.permit(
            response: [
                :id, :user_id, :post_id, :body
            ]
        )
    end

end
