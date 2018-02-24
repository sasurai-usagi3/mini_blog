module MiniBlog
  class Image < ApplicationRecord
    mount_uploader :content, MiniBlog::ImageContentUploader
    validates :content, presence: true
  end
end
