require 'spec_helper'

describe ProfileController do
  render_views
  let(:page) { Capybara::Node::Simple.new(response.body) }
  let(:username) { 'simeonwillbanks' }
  let(:action) { 'show' }
  let(:params) { {:username => username} }
  let(:title) { "#{username} tags" }
  let(:list_items) { ['Rails Templates', 'Terminal Output', 'Diff'] }

  describe "GET 'show'" do
    it_behaves_like 'a profile'
  end
end