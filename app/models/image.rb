class Image < ApplicationRecord
    mount_uploader :img, ImageUploader
    belongs_to :user

    validates :title, presence: true, length: {minimum: 2}
    validates :body, presence: true
    validates :img, file_size: { less_than: 1.megabytes }
end
