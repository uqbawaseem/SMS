class Question < ApplicationRecord
    has_many :replies
    has_many :students, through: :replies, :dependent=> :destroy
end
