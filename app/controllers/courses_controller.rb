class CoursesController < ApplicationController
  def index
    @courses = Course.find(params[:department_id])
  end
  def show
    @course = Course.find(params[:id])
  end
  def new
  end
  def create
    @course = Course.new(params.require(:course).permit(
      :title,
      :professor,
      :recommended,
      :adder,
      :notes
    ))
    @course.save
    redirect_to @course

  end
end
