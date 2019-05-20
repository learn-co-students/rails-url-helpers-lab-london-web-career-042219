class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :active]
  
  def index
    @students = Student.all
  end

  def show
#No need to set the Id as this is done in the before_action
  end

  def active
    @student.toggle_active
    @student.save
    redirect_to student_path(@student.id)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end