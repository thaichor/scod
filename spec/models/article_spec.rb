require 'rails_helper'

describe Article, 'model' do

  it { should have_field(:title).of_type(String) }
  it { should have_field(:content).of_type(String) }

  it { should belong_to(:author).of_type(User) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:author) }
end
