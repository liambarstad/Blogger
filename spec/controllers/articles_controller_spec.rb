require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe "index" do
    before { visit "/articles" }

    it "shows page" do

      # expect(page).to respond_with 200
      expect(page).to have_content "All Articles"
      expect(page).to have_css ".article_title"
      expect(page).to have_css "#article1"
    end

    describe "navigation" do
      before { click_on "<%= article.title %>" }

      it "shows single article" do

        # expect(page).to respond_with 200
        expect(page).to have_current_path("/article/<%= article.id %>")
      end
    end
  end

  # describe "show" do
  #   before { visit "/articles/1" }
  #
  #   it { is_expected.to respond_with 200 }
  #   it { is_expected.to have_content "Sample" }
  # end
  #
  # describe "edit" do
  #   before { visit "articles/1/edit" }
  #
  #   it { is_expected.to respond_with 200 }
  #   it { is_expected.to have_content "Sample" }
  # end
end
