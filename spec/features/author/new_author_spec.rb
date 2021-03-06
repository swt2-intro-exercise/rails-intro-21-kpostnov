require 'rails_helper'

describe "New author page", type: :feature do
  it "should exist at 'new_author_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_author_path
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit new_author_path
    # these are the standard names given to inputs by the Rails form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should save a new author in the database after filling out the form" do
    old_count = Author.count
    
    visit new_author_path
    page.fill_in 'author[first_name]', with: 'Edsger'
    page.fill_in 'author[last_name]', with: 'Dijkstra'
    page.fill_in 'author[homepage]', with: 'https://de.wikipedia.org/wiki/Edsger_W._Dijkstra'

    find('input[type="submit"]').click
  
    expect(Author.count).to eq(old_count + 1)
  end

  it "should check if an author has a last name" do
    @author = Author.new(first_name: "Alan", last_name: "", homepage: "http://wikipedia.org/Alan_Turing")
    expect(@author).to_not be_valid
  end
end
