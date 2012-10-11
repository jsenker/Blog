require 'spec_helper'

describe "Static pages" do

  describe "Welcome page" do

    it "should have the h1 'Welcome'" do
      visit '/static_pages/welcome'
      page.should have_selector('h1', :text => 'Welcome')
    end
    
    it "should have the title 'Welcome'" do
      visit '/static_pages/welcome'
      page.should have_selector('title', :text => "Tourist Jesus | Welcome")
    end
  end
  
  describe "About page" do
    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Tourist Jesus | About Me")
    end
  end
  
  describe "Blog page" do

    it "should have the h1 'Blog'" do
      visit '/static_pages/blog'
      page.should have_selector('h1', :text => 'Blog')
    end
    
    it "should have the title 'Blog'" do
      visit '/static_pages/blog'
      page.should have_selector('title', :text => "Tourist Jesus | Blog")
    end
  end
  
  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "Tourist Jesus | Contact")
    end
  end
end