require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe "index" do
    before { visit "/articles" }

    it { is_expected.to respond_with 200 }
    it { is_expected.to have_content "Articles" }
  end

  describe "show" do
    before { visit "/articles/1" }

    it { is_expected.to respond_with 200 }
    it { is_expected.to have_content "Sample" }
  end

  describe "edit" do
    before { visit "articles/1/edit" }

    it { is_expected.to respond_with 200 }
    it { is_expected.to have_content "Sample" }
  end
end
