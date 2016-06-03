require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      get static_pages_home_path
      expect(response).to have_http_status(200)
    end
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Home")
    end
  end
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      get static_pages_help_path
      expect(response).to have_http_status(200)
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end
  end
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      get static_pages_about_path
      expect(response).to have_http_status(200)
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("About")
    end
  end
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      get static_pages_contact_path
      expect(response).to have_http_status(200)
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("Contact")
    end
  end
end
