class SongsController < ApplicationController
  def index
    render json: Song.search(params[:title], params[:genre], params[:artist]).top(5).order(:title, :desc)
  end
end
