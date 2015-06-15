require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "サンプルアプリのHomeページに Sample Appって書いてある。" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "HomeページのタイトルにHomeって書いてある" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
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


end