class TagsController < ApplicationController
	include TagsHelper

	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		# Already declaring in show() method, so just pass that value through
		@tag = Tag.find(params[:id])
		@tag.destroy

		flasher "deleted"

		redirect_to action: 'index'
	end
end
