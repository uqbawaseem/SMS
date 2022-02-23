class Student < ApplicationRecord
  validates :name, :email,:encrypted_password, presence: true
  validates :roll_no, uniqueness: true
  has_many :registered_courses
  has_many :courses, through: :registered_courses, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :timeoutable
end
