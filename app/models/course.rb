class Course < ApplicationRecord
    validates :name, :presence=> true, :uniqueness => true
    
    has_many :registered_courses
    has_many :students, through: :registered_courses, :dependent => :destroy
end
