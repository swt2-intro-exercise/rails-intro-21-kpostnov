require 'rails_helper'

describe "Deleting Authors", type: :feature do
    before :each do
        @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
        @author.save
    end

    it "should delete an author from the database" do
        visit author_path(@author)

        old_count = Author.count
        
        expect(page).to have_selector(:link_or_button, "Delete Author")
        find_button("Delete Author").click

        expect(Author.count).to eq(old_count - 1)
        
    end
end