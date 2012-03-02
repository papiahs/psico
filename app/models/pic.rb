class Pic < ActiveRecord::Base
  has_many :autor_pics
  has_many :autor, :through => :autor_pics
  
  validates :titulo, :presence => {:message =>  "Titulo es Obligatorio"}
  validates :nombrearchivo, :presence => {:message => "Nombre de Archivo es Obligatorio"}
  
  scope :contenido, where(:tipo => "Contenido")
end
