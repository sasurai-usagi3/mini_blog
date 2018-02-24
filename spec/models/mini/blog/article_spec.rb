require 'rails_helper'

module Mini::Blog
  RSpec.describe Article, type: :model do
    describe 'Validation' do
      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:body) }
    end
  end
end
