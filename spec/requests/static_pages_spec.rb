require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "サンプルアプリのHomeページに Sample Appって書いてある。" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end

  end


  describe "Help page" do

    it "ヘルプページにヘルプって書いてある" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "helpページのタイトルにHelpって書いてある" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end

  end

  describe "About page" do

    it "aboutページにAbout Usって書いてある" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "aboutページのタイトルにAbout Usって書いてある" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end

  end


  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end