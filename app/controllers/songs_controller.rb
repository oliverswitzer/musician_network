class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to @song
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
