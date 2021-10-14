require 'rails_helper'

RSpec.describe Trainer, type: :model do
  it { should have_many(:appointments).dependent(:destroy) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:fightingStyle) }
  it { should validate_presence_of(:trainerImg) }
end
