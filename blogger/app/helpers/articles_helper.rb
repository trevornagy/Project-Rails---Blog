module ArticlesHelper

	def article_params
		params.require(:article).permit(:title, :body)
	end

	def flasher(string)
		flash.notice = "Article '#{@article.title}' #{string}!"
	end
end
