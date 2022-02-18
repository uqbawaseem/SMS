class StudentsController < ApplicationController
    def index 
        @students = Student.where(role: true)
    end
end
