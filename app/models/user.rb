class User < ApplicationRecord
		validates :nombre,:apellido,length:{minimum: 3, message:"introduce mas de 3 caracteres"}
	validates :email,format:{ with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message:"correo incorrecto"}

end
