class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all
    @photos_list = matching_photos.order({ :created_at => :desc })
    render({ :template => "photo_templates/index" })
  end
  def details
    render({ :template => "photo_templates/details" })
  end
end
