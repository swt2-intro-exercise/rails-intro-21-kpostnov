require 'rails_helper'

describe "Authors edit page", type: :feature do

    before :each do
        @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
        @author.save
    end

    it "should have text inputs for an author's first name, last name, and homepage" do
        visit edit_author_path(@author)

        expect(page).to have_field('author[first_name]')
        expect(page).to have_field('author[last_name]')
        expect(page).to have_field('author[homepage]')
    end

    it "should edit the entry in the database" do
        visit edit_author_path(@author)

        page.fill_in 'author[first_name]', with: 'Edsger'
        # page.fill_in 'author[last_name]', with: 'Dijkstra'
        # page.fill_in 'author[homepage]', with: 'https://de.wikipedia.org/wiki/Edsger_W._Dijkstra'
    
        find('input[type="submit"]').click

        expect(Author.find(1).first_name).to eq("Edsger")
    end


end