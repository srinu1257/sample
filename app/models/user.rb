class User < ActiveRecord::Base
  
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable
	has_many :albums
attr_accessible :email, :password, :password_confirmation,:remember_me,:firstname,:lastname, :age,:gender,:dateofbirth,:phone,:address
	
end
