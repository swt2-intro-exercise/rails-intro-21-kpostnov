require 'rails_helper'

RSpec.describe Author, type: :model do

  before :each do
    @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
  end

  it "should have a first name when instantiating" do
    # pending "add some examples to (or delete) #{__FILE__}"
    expect(@author.first_name).to eq("Alan")
  end

  it "should have a method that returns the full name" do
    expect(@author.name).to eq("Alan Turing")
  end
end
