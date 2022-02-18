class CoursesController < ApplicationController
  def index
    @courses = Course.all
    @st_courses = current_student.courses.all
  end

  
  def show
    course_find
  end

       
   def new
    @course = Course.new
  end


  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path 
    else
      render :new, notice: 'course was not created.'
    end
  end


  def edit
    course_find
  end


  def update
    course_find
    if @course.update(course_params)
      redirect_to courses_path
    else
      render :new, notice: 'course was not updated.'
    end
  end


  def destroy
    course_find
        if @course.destroy
      redirect_to courses_path
    else    	
    end
  end
  

    private 
    def course_find 
      @course = Course.find(params[:id])
    end
    def course_params 
    params.require(:course).permit(:name, :age, :status, :email, :password)
    end
end
