class RegisteredCoursesController < ApplicationController
  def show
    @st_grade = RegisteredCourse.find_by(student_id: current_student.id, course_id: params[:id])
  end

  def new
    @rc = RegisteredCourse.new
  end

  def create 
    if current_student.role == true
      @rc = RegisteredCourse.create(student_id: params[:student_id], course_id: params[:course_id], grade: "")
      redirect_to courses_path
    else
      puts "your are admin"
    end
    
  end
  

  def edit
    @rc = RegisteredCourse. find_by(course_id: params[:id])
  end
  
  def update
    @rc = RegisteredCourse.find_by(course_id: params[:id])
      if @rc.update(rc_params)
        flash[:success] = "Register course was successfully updated"
        redirect_to students_path
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  

  private 
  def rc_params
    params.require(:registered_course).permit(:grade)
  end
end
