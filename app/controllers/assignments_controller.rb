class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
    @courses = Course.all
  end
  def show
    @assignment = Assignment.find(params[:id])
  end
end
