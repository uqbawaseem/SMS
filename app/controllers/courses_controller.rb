class CoursesController < ApplicationController
  before_action :course_find, only:[:show, :edit, :update, :destroy]
  def index
    @courses = Course.all
    @st_courses = current_student.courses
    @res_courses = current_student.registered_courses
    # @st_reg_cou = current_student.courses.include? c

  end

  
  def show
  end

       
   def new
    @course = Course.new
  end


  def create
    @course = Course.new(course_params)
    respond_to do |format|
      if @course.save
        format.js
       format.html { redirect_to courses_path}
       format.json { render :index, status: :created, location: @course }
      else
        format.js
       format.html { render :new }
       format.json { render json: @course.errors, status: :unprocessable_entity }
     end
    end
   
  end


  def edit
  end


  def update
    if @course.update(course_params)
      redirect_to courses_path
    else
      render :new, notice: 'course was not updated.'
    end
  end


  def destroy
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
