module MiniBlog
  class Article < ApplicationRecord
    has_many :article_tag_relations, dependent: :destroy
    has_many :tags, through: :article_tag_relations

    validates :title, presence: true
    validates :body, presence: true
  end
end
