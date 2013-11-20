require 'spec_helper'

describe "Static pages" do
  defaultTitle = "Ruby on Rails Tutorial Sample App | "

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
      expect(page).to have_title(defaultTitle + "Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      expect(page).to have_title(defaultTitle + "Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
      expect(page).to have_title(defaultTitle + "About Us")
    end
  end

end