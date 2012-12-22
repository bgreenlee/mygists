require 'spec_helper'

describe Profile do
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:user) }
  it { should respond_to(:gravatar, :gravatar=) }
  it { should belong_to(:user) }

  context 'custom param key' do
    subject { FactoryGirl.build_stubbed(:profile) }
    its(:to_param) { should eq('simeonwillbanks') }
  end
end