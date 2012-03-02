class Autor < ActiveRecord::Base
  has_many :autor_pics
  has_many :pics , :through => :autor_pics
  
  validates :nombre, :presence => {:message =>  "Nombre es Obligatorio"}
  validates :apellido, :presence => {:message => "Apellido es Obligatorio"}
  
end
