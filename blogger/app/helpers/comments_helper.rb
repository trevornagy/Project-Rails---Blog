module CommentsHelper

	def flasher(string)
		flash.notice = "Comment #{string}!"
	end

end
