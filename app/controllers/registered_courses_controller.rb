class RegisteredCoursesController < ApplicationController
  before_action :registered_course_find, only:[:edit, :update]

  def index
    @registered_courses= RegisteredCourse.where(student_id: params[:id])
  end

  def show
    @grades = current_student.registered_courses.find_by(course_id: params[:id])
  end

  def new
    @rc = RegisteredCourse.new
  end

  def create 
    if current_student.role == "student"
      @rc = RegisteredCourse.create(student_id: params[:student_id], course_id: params[:course_id], grade: "")
      redirect_to courses_path
    else
      puts "your are admin"
    end
    
  end
  
  def edit
    
  end
  
  def update
      if @rc.update(rc_params)
        flash[:success] = "Register course was successfully updated"
        redirect_to students_path
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  private 
  def registered_course_find 
    @rc = RegisteredCourse.find(params[:id])
  end
  def rc_params
    params.require(:registered_course).permit(:grade)
  end
end