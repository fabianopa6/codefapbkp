class LoginController < ApplicationController

	def index

		@user = User.new
	end


	def doLogin

		@user = User.new params.require(:user).permit(:login, :password, :user_type)

		if @user.user_type == "student"
			redirect_to :controller => "dashboard_student"
      puts "Login realizado com sucesso!"
		elsif @user.user_type == "professor"
			redirect_to :controller => "dashboard_professor"
      puts "Login realizado com sucesso!"
		end
	end


	def createSection
		
	end


	def destroySection
		
	end



	def logout
		redirect_to root_path
	end

end