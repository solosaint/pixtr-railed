class GalleriesController < ApplicationController
	def new
	end

	def create
  		@gallery = Gallery.new(gallery_params)
 
  		@gallery.save
  		redirect_to @gallery
	end

	def show
  @gallery = Gallery.find(params[:id])
	end

	def index
  @gallerys = Gallery.all
	end


	private
  def gallery_params
    params.require(:gallery).permit(:title, :text)
  end

end
