class Author < ApplicationRecord
    validates :last_name, presence: true, length: {minimum: 5}
    
    def name
        return first_name + " " + last_name
    end
end
