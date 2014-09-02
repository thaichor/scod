require 'rails_helper'

describe Role, 'model' do
  it { should have_field(:name).of_type(String) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_inclusion_of(:name).to_allow(subject.class.roles) }
end

describe Role, 'class methods' do
  subject { Role }

  it '.roles' do
    expect(subject.roles).to eq %w(admin member)
  end
end

describe Role, 'instance methods' do
  subject { build(:role, :admin) }

  it '#admin?' do
    expect(subject.admin?).to eq true
  end

  it '#member?' do
    expect(subject.member?).to eq false
  end
end