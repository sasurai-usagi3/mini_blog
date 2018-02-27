require 'rails_helper'

module MiniBlog
  RSpec.describe User, type: :model do
    describe 'Validation' do
      it { should validate_presence_of(:name) }
    end
  end
end
