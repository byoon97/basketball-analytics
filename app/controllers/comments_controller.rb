class CommentsController < ApplicationController
    def index
        comments = Comment.all 
        render json: CommentSerializer.new(comments)
    end

    def show
        comment = Comment.find(params[:id])
        render json: CommentSerializer.new(comment)
    end

    def new 
        comment = Comment.new 
        render json: CommentSerializer.new(comment)
    end

    def create
        comment = Comment.create(comment_params)
        render json: CommetSerializer.new(comment)
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy 
        render json: CommentSerializer.new(comment)   
    end

    private

    def comment_params
        params.require(comment).permit(:content, :user_id, :post_id)
    end

end
