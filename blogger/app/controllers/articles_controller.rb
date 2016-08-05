class ArticlesController < ApplicationController
	include ArticlesHelper

	def index
		@articles = Article.all
	end

	def show
		article_IdParams

		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new
		@article = Article.new	
	end

	def create
		@article = Article.new(article_params)
		@article.save
		flasher "created"

		redirect_to article_path(@article)
	end

	def destroy
		# Already declaring in show() method, so just pass that value through
		article_IdParams.destroy
		flasher "deleted"

		redirect_to articles_path
	end

	def edit
		article_IdParams
	end

	def update
		article_IdParams.update(article_params)

		flasher "updated"

		redirect_to article_path(@article)
	end
end
