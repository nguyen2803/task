# frozen_string_literal: true

module PhotosHelper
  def search_image
    if params[:commit] == 'submit' && !params[:search_text].empty?
      conn = Faraday.new(url: 'https://www.flickr.com') do |faraday|
        faraday.request  :url_encoded
        faraday.response :logger
        faraday.adapter  Faraday.default_adapter
      end

      response = conn.get do |req|
        req.url '/services/rest/'
        req.params['api_key'] = '477a1f3be8d4f207638152397e09f0f2'
        req.params['format'] = 'json'
        req.params['method'] = 'flickr.photos.search'
        req.params['text'] = params[:search_text]
        req.params['nojsoncallback'] = '1'
        req.params['per_page'] = '10'
      end
      jsonDocument = JSON.parse(response.body)
      @photo_list = jsonDocument['photos']['photo']
      # @photo_list = photos['photo']
    end
  end

  def photo_in_gallery?(id)
    !Photo.where(flickr_id: id).blank?
  end
end
