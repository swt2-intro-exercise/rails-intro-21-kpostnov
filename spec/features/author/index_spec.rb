require 'rails_helper'

describe "Authors index page", type: :feature do

    before :each do
        @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
        @author.save
    end

    it "should display the details of all authors in the database" do        
        visit authors_path

        expect(page).to have_text("Alan")
        expect(page).to have_text("Turing")
        expect(page).to have_text("http://wikipedia.org/Alan_Turing")
    end

    it "should have a table and a button to add new authors" do
        visit authors_path

        expect(page).to have_selector('table')
        expect(page).to have_link 'New', href: new_author_path
    end
end