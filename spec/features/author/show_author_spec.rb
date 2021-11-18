require 'rails_helper'

describe "Show author page", type: :feature do
    it "should display an author's details" do
        @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
        @author.save
        visit author_path(@author)

        expect(page).to have_text("Alan")
        expect(page).to have_text("Turing")
        expect(page).to have_text("http://wikipedia.org/Alan_Turing")
    end
end