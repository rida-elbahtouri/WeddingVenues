require 'rails_helper'
RSpec.describe User, type: :model do
  subject do
    Favourite.create(user_id:1,weddingvenue_id:1)
  end

  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:weddingvenue) }
  end
end