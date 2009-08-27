class FeedController < ApplicationController
  def index
    @photos = Photo.find(:all, :order => 'created_at desc', :limit => 20)
  end
end
