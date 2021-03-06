class Course < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 15, maximum: 500}
    has_many :user_courses
    has_many :users, through: :user_courses 
end