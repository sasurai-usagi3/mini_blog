module Mini
  module Blog
    class Image < ApplicationRecord
      mount_uploader :content, ImageContentUploader
      validates :content, presence: true
    end
  end
end
