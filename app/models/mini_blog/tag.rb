module MiniBlog
  class Tag < ApplicationRecord
    has_many :article_tag_relations, dependent: :destroy
    has_many :articles, through: :article_tag_relations

    validates :name, presence: true
  end
end
