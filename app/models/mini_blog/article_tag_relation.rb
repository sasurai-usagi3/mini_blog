module MiniBlog
  class ArticleTagRelation < ApplicationRecord
    belongs_to :article
    belongs_to :tag

    validates :article, presence: true
    validates :tag, presence: true
  end
end
