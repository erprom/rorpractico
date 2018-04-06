class Animal < ApplicationRecord
  belongs_to :user
  #se tiene que tener un minimo de 3 caracteres, no puede estar vacío.
  validates :nombre,length:{minimum: 3, message:"introduce mas de 3 caracteres"}
end
