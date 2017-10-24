class ArtworkSharesController < ApplicationController

  def index
    @artwork_share = ArtworkShare.all

    render json: @artwork_share
  end

  def create
    artwork_share = ArtworkShare.new(params[:artworks].permit(:viewer_id, :artwork_id))

      if artwork_share.save
        render json: artwork_share
      else
        render json: artwork_share.errors.full_messages, status: :unprocessable_entity
      end
  end

  def destroy
    @artwork_share = ArtworkShare.find(params[:id])

    if @artwork_share.destroy
      render json: @artwork_share
    else
      render text: "You can't destroy what doesn't exist"
    end
  end

end
