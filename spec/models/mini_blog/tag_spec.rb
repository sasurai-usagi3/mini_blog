require 'rails_helper'

module MiniBlog
  RSpec.describe Tag, type: :model do
    describe 'Association' do
      it { should have_many(:article_tag_relations).dependent(:destroy) }
      it { should have_many(:articles).through(:article_tag_relations) }
    end

    describe 'Validation' do
      it { should validate_presence_of(:name) }
    end
  end
end
