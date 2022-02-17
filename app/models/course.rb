class Course < ApplicationRecord
    validates :name, uniqueness: true
end
