require 'rails_helper'
RSpec.describe User, type: :model do
  subject do
    Weddingvenue.create(name: "name", location: "place", description: "desc", price: 100, photo: nil)
  end

  describe 'Validate fields' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }

    it 'is valid when name is not blank' do
      subject.name = 'name2'
      expect(subject).to be_valid
    end
    it 'is invalid when name is blank' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
  describe 'Associations' do
    it { should have_many(:favourites) }
  end
end
