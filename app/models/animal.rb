class Animal < ApplicationRecord
  belongs_to :user
  validates :nombre,length:{minimum: 3, message:"introduce mas de 3 caracteres"}
end
