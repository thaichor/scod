require 'rails_helper'

describe Article, 'model' do

  it { should have_field(:name).of_type(String) }
  it { should have_field(:content).of_type(String) }

  it { should embed_one(:author).of_type(User) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:content) }
end
