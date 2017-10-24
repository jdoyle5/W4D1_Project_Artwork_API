class ArtworksController < ApplicationController
  def index
    # @artwork = User.find_by(id: params[:user_id]).artworks
    # @shared_artwork = User.find_by(id: params[:viewer_id]).artworks

    if @artwork
      render json: @artwork
    else
      render json: Artwork.all
    end
    # render json: @shared_artwork
  end

  # def create
  #   render json: params
  # end
  #
  # def show
  #   render json: params
  # end

  def create
    artwork = Artwork.new(artwork_params)

    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @artwork = Artwork.find(params[:id])

    if @artwork
      render json: @artwork
    else
      render json: @artwork.errors.full_messages, status: 404
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])

    if @artwork.destroy
      render json: @artwork
    else
      render text: "You can't destroy what doesn't exist"
    end
  end

  def update
    @artwork = Artwork.find(params[:id])

    if @artwork.update(artwork_params)
      render json: @artwork
    else
      render json: @artwork.errors.full_messages, status: 422
    end
  end

  def artwork_params
    params[:artworks].permit(:title, :image_url, :artist_id)
  end
end
