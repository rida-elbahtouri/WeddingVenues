require 'rails_helper'
RSpec.describe User, type: :model do
  subject do
    User.create(username: 'test_username', password: 'password', password_confirmation: 'password')
  end

  describe 'Validate username' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }

    it 'is valid when username is not blank' do
      subject.username = 'test_username2'
      expect(subject).to be_valid
    end

    it 'is invalid when username is blank' do
      subject.username = nil
      expect(subject).to_not be_valid
    end
  end
  describe 'Associations' do
    it { should have_many(:favourites) }
    it { should have_many(:venues).through('favourites') }
  end
end
