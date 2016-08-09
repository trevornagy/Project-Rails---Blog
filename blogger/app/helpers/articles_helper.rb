module ArticlesHelper

	def article_params
		params.require(:article).permit(:title, :body, :tag_list, :image)
	end

	def flasher(string)
		flash.notice = "Article '#{@article.title}' #{string}!"
	end

	def article_IdParams
		@article = Article.find(params[:id])
	end
end
