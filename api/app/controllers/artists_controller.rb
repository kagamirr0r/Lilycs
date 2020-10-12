class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    render json: @artists
  end

  def create
    @artist = Artist.create(params[:artist])
    render json: @artist
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params[:artist])
    render json: @artist
  end

  def destroy
    @artist = Artist.find(prams[:id])

    if @artist.destroy
      head :no_content, status: :ok
    else
      render json: artist.error, status: :unprocessable_entity
    end
  end
end
