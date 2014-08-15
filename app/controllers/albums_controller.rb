class AlbumsController < ApplicationController
	#before_filter :authenticate_user!

	def index
   #@user=current_user
		#@album=@user.albums
	end

	def new
		@album=Album.new
		2.times do
			@album.images.build 
		end
  end
	def create
 @user=current_user
		@album=@user.albums.new(params[:album])
			if @album.save
				redirect_to album_path(@album)
			else
				render :action=>'new'
			end
		end 

	def show
		@album=Album.find(params[:id])            
	end

	def edit
		@album=Album.find(params[:id])
	end

	def destroy
		@album=Album.find(params[:id])
		@album.destroy
    redirect_to albums_path
	end

	def update
		@album=Album.find(params[:id])
		@album.update_attributes(params[:album])
    redirect_to albums_path
	end
        
               
end
