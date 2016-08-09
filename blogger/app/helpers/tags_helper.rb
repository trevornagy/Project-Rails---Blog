module TagsHelper
	def flasher(string)
		flash.notice = "Tag '#{@tag.name}' #{string}!"
	end
end
