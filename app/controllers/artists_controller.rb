class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def photo
    artist = Artist.find(params[:id])
    send_data artist.photo_blob, :type => 'image/png', :disposition => 'inline'
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    photo_blob = params[:artist].delete(:photo).read
    @artist = Artist.new(params[:artist])
    @artist.photo_blob = photo_blob

    if @artist.save
      redirect_to artist_path(@artist)
    else
      render "new"
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
  end
end
