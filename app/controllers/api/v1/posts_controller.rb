class Api::V1::PostsController < ApplicationController

    def index
        posts = Post.all
        options = {
            include: [:user]
        }
        render json: PostSerializer.new(posts)
    end

    def show
        render json: { post: Post.find_by(id: params[:id]) }
    end

    def create
        post = Post.new(create_params[:post])
        if post.save
            render json: { post: post }
        else
            render json: { error: "Something went wrong..." }
        end
    end

    def update
        post = Post.find_by(id: params[:id])
        if post.update(update_params[:post])
            render json: { post: post }
        else
            render json: { error: "Something went wrong..." }
        end
    end

    def destroy
        post = Post.find_by(id: params[:id])
        puts "Destroying '#{post.title}', by #{post.user.username}"
        if post.destroy
            render json: { message: "Post has been removed." }
        else
            render json: { error: "Something went wrong..." }
        end
    end

    # ----------------------------------
    #-----------------------------------
    private #---------------------------
    #-----------------------------------
    # ----------------------------------

    def create_params
        params.permit(
            post: [
                :user_id, :title, :description, :body
            ]
        )
    end

    def update_params
        params.permit(
            post: [
                :id, :user_id, :title, :description, :body
            ]
        )
    end
end