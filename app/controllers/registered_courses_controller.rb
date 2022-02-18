class RegisteredCoursesController < ApplicationController
  def index

  end

  def show
  end

  def new
    @rc = RegisteredCourse.new
  end

  def create 
    
    
      redirect_to courses_path
  end

  def edit
    @rc = current_student.registeredCourses.new(rc_params)
    if @rc.save 
      redirect_to courses_path
    else
      root_path
    end

  end

  private 
  def rc_params
    params.require(:registered_course).permit(:grade, :student_id, :cource_id)
  end
end
