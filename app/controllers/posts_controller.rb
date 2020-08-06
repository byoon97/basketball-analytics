class PostsController < ApplicationController
    def index
        posts = Post.all 
        render json: PostSerializer.new(posts)
    end

    def show
        post = Post.find(params[:id])
        render json: PostSerializer.new(post)
    end

    def new 
        post = Post.new 
        render json: PostSerializer.new(post)
    end

    def create
        post = Post.create(post_params)
        render json: PostSerializer.new(post)
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy 
        render json: PostSerializer.new(post)   
    end

    private

    def post_params
        params.require(post).permit(:title, :content, :upvotes, :user_id)
    end
end
