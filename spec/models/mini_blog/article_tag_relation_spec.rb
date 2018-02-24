require 'rails_helper'

module MiniBlog
  RSpec.describe ArticleTagRelation, type: :model do
    describe 'Association' do
      it { should belong_to(:article) }
      it { should belong_to(:tag) }
    end

    describe 'Validation' do
      it { should validate_presence_of(:article) }
      it { should validate_presence_of(:tag) }
    end
  end
end
