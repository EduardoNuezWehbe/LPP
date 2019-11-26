require "practica6/version"

module Practica6
	class Platos
		attr_reader :nombre, :listaAlimentos, :listaGramos
		def initialize (nombr,listA,listG)
			@nombre = nombr
			@listaAlimentos = listA
			@listaGramos = listG
		end
	end
end
