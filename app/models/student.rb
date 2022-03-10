class Student < ApplicationRecord
  validates :email, :name, presence: true
  validates :roll_no, uniqueness: true
  # Relation with courses through registered courses
  has_many :registered_courses
  has_many :courses, through: :registered_courses, :dependent => :destroy
  # Relation with replies through questions
  has_many :replies
  has_many :questions, through: :replies, :dependent=> :destroy
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :timeoutable

         enum role: { admin: 0, student: 1 } 
         after_initialize :set_default_role, :if =>  :new_record?
         def set_default_role
          self.role ||= :student
        end
end
  