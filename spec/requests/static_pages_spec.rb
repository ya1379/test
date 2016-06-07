require 'spec_helper'
require 'rails_helper'

def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit "/" }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
  end

  describe "Help page" do
    before { visit "/help" }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
