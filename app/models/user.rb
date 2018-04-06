class User < ApplicationRecord
	has_many :animals,dependent: :destroy
	#se tiene que tener un minimo de 3 caracteres, no puede estar vacío.
	validates :nombre,:apellido,length:{minimum: 3, message:"introduce mas de 3 caracteres"}
	#se comprueba si introduce un email correcto, no puede estar vacío.
	validates :email,format:{ with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, 
	message:"correo incorrecto"}

end
