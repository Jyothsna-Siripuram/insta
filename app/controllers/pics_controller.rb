class PicsController < ApplicationController

	def index

	end

	def show
		
	end

	def new
		@pic =  Pic.new(pic_params)
	end

	def create
		@pic =  Pic.new(pic_params)
		if @pic.save
			# redirect_to @pic
		else
			render 'new'
		end
	end

	private
		def pic_params
			params.permit(:title, :description)
		end
end
