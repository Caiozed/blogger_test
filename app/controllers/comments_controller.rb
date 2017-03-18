class CommentsController < ApplicationController

	def create 
		@comment = Comments.new(comment_params)
		@comment.article_id = params[:article_id]
		@comment.save
		redirect_to article_path(@comment.article)
	end

	private
	def comment_params
		params.require(:id).permit(:author_name, :body)
	end
end
