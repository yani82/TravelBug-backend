class Api::V1::CommentsController < ApplicationController
    def index 
        comments = Comment.all 

        render json: comments
    end 

    def show 
        comment = Comment.find(params[:id])

        render json: comment
    end 

    def create  
        comment = Comment.create(comment_params)
        # byebug 
        if comment.save
            render json: comment, status: :accepted
        else 
        # here is where we would render a json error object 
            render json: {errors: comment.errors.full_messages}, status: :unprocessible_entity 
        end
    end 

    private 

    def comment_params 
        params.require(:comment).permit(:username, :description, :country_id)
    end 

end