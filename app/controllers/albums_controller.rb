# frozen_string_literal: true

class AlbumsController < ApplicationController
  def index
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      flash[:success] = 'Picture was liked'
    else
      render 'new'
    end
  end

  def favorite
    @photos = Photo.all
  end

  def destroy
    Album.find(params[:id]).destroy
    flash[:info] = 'Picture was deleted'
  end

  private

  def album_params
    params.require(:album).permit(:title)
  end
end
