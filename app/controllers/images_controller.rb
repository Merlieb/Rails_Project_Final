    
class ImagesController < ApplicationController
	def index
		@images = Image.all
	end

	def show
		@image = Image.find(params[:id])
	end

	def new
		@image = Image.new
	end

	def create
	  @image = Image.new(image_params)
	  @image.save
	  redirect_to image_path(@image)
	end

	def edit
		@gimage= Image.find(params[:id])
	end

	def update
	  @image = Image.find(params[:id])
	  @image.update(image_params)
	  redirect_to image_path(@image)
	end

	private

	def image_params
		 params.require(:image).permit(:images_url)
		 
    end
end