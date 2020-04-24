# frozen_string_literal: true

class PhotosController < ApplicationController
  def index
    @photo = Photo.new
    search_image
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = 'Picture was liked'
    end
end

  def favorite
    @photos = Photo.all
  end

  def destroy
    Photo.find(params[:id]).destroy
    flash[:info] = 'Picture was deleted'
  end

  private

  def photo_params
    params.require(:photo).permit(:farm, :server, :flickr_id, :secret)
  end
end
