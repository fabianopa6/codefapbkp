class User < ActiveRecord::Base

	has_secure_password


	validates_presence_of :name , message: "- O nome é um campo obrigatorio."

	validates_uniqueness_of :login, message: "- Este login já está sendo utilizado."
	validates_presence_of :login , message: "- O login é um campo obrigatorio."  	

	validates_presence_of :password, message: "- Senha em branco, favor preencher"
	

end
