require 'spec_helper'

describe "StaticPages" do
  
  describe "Home" do
    before {visit root_path}
    it "should have content 'Maggie'" do
      expect(page).to have_content('Maggie')
    end
  end
  
  describe "About" do
    before {visit about_path}
    it "should have content 'experiences'" do
      expect(page).to have_content('experiences')
    end
  end
  
  describe "Projects" do
    before {visit projects_path}
    it "should have content 'lately'" do
      expect(page).to have_content('lately')
    end
  end
  
  describe "Contact" do
    
    before {visit contact_path}
    
    it "should have content 'email'" do
      expect(page).to have_content('email')
    end
    
    describe "email link" do
      
      it "should be a link" do
        expect(page).to have_link('margaret.m.moreno@gmail.com')
      end
      
      it "should work" do
        click_link "margaret.m.moreno@gmail.com"
        expect(page).to have_content("Email me")
      end
    end
    
  end
  
  
  describe "header links" do
    before {visit root_path}
    it "should work" do
      click_link "About Me"
      expect(page).to have_content('experiences')
      click_link "Contact"
      expect(page).to have_content('email')
      click_link "Projects"
      expect(page).to have_content('lately')
      click_link "Home"
      expect(page).to have_content('Maggie')
    end
  end
  
end
