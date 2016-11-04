class DashboardStudentController < ApplicationController
	
	before_action :find_subject, only: [:show]

  def index
  	 @subjects = Subject.all.order("created_at DESC")
  end

  def show
 
  end

private

  def find_subject
  	@subject = Subject.find(params[:id])
  end
end
