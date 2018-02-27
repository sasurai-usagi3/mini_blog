require 'rails_helper'

module MiniBlog
  RSpec.describe Article, type: :model do
    describe 'Association' do
      it { should have_many(:article_tag_relations).dependent(:destroy) }
      it { should have_many(:tags).through(:article_tag_relations) }
    end

    describe 'Validation' do
      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:body) }
      it { should validate_presence_of(:status) }
    end
  end
end
