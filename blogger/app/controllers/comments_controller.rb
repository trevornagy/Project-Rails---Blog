class CommentsController < ApplicationController
	include CommentsHelper

	def create 
		@comment = Comment.new(comment_params)
		@comment.article_id = params[:article_id]

		@comment.save
		flasher "created"

		redirect_to article_path(@comment.article)
	end

	def comment_params
		params.require(:comment).permit(:author_name, :body)
	end
end
