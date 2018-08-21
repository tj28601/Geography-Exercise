require 'rails_helper'

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end

RSpec.describe State do
  describe 'state model creation' do
    it 'returns list of states' do


      state_1 = FactoryBot.create(:state)
      state_2 = FactoryBot.create(:state)

      states = State.all

      expect(states).to include(state_1)
      expect(states).to include(state_2)
    end
  end
end
RSpec.describe State, type: :model do
  describe 'validations' do
    it { should have_valid(:name).when('State name') }
    it { should have_valid(:capital).when('State capital') }

    it { should_not have_valid(:name).when("") }
    it { should_not have_valid(:capital).when("") }

    end
  end
