require 'rails_helper'

describe User, 'model' do

  it { should have_field(:username).of_type(String) }

  it { should embed_one(:role).of_type(Role) }

  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username).case_insensitive }
  it { should validate_presence_of(:role) }
end

describe User, 'callbacks' do
  it 'after initialize' do
    expect(subject.member?).to eq(true)
  end
end

describe User, 'Delegations' do
  it { should respond_to(:admin?) }
  it { should respond_to(:member?) }
end