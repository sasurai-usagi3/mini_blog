module Mini
  module Blog
    class Article < ApplicationRecord
      validates :title, presence: true
      validates :body, presence: true
    end
  end
end
