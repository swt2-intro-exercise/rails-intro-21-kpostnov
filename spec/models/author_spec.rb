require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should have a first name when instantiating" do
    # pending "add some examples to (or delete) #{__FILE__}"
    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
  end
end
