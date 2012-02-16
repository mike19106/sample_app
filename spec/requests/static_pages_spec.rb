require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('Sample App')
    end

    it "should have the title Home" do
      visit root_path
      page.should have_selector('title', :text => "#{base_title} | Home")
    end

    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end
  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title', :text => "#{base_title} | Help")
    end

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title', :text => "#{base_title} | About Us")
    end

   it "should have the h1 'About Us'" do
      visit about_path
     page.should have_selector('h1', :text => 'About Us')
   end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact")
    end

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => "Contact")
    end

  end
end
