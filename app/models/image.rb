class Image < ActiveRecord::Base
    mount_uploaders :images_url, ImagesUploader
    serialize : images_url, JSON # If you use SQLite, add this line.
    belongs_to :user
  end