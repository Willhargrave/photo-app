class PagesController < ApplicationController
require 'flickr'


  def index
    begin
      flickr = Flickr.new
      @photos = flickr.photos.search(user_id: params[:user_id])
    end
  end
end
