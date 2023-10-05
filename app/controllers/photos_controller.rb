class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all
    @photos_list = matching_photos.order({ :created_at => :desc })
    render({ :template => "photo_templates/index" })
  end
  def details
    url_photo = params.fetch("path_photo")
    matching_photos = Photo.where({ :id => url_photo })
    @the_photo = matching_photos.first
    render({ :template => "photo_templates/details" })
  end
  def create
    input_photo = params.fetch("query_photo")
    input_caption = params.fetch("query_caption")
    input_owner_id = params.fetch("query_owner_id")

    new_photo = Photo.new
    new_photo.image = input_photo
    new_photo.caption = input_caption
    new_photo.owner_id = input_owner_id
    new_photo.save
    redirect_to("/photos/" + new_photo.id.to_s)
  end
  def delete
    the_id = params.fetch("delete_id")
    matching_photos = Photo.where({ :id => the_id })
    the_photo = matching_photos.first
    the_photo.destroy
    redirect_to("/photos")
  end
end
