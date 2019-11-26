require "practica6/version"

module Practica6
	class Platos
		attr_reader :nombre, :listaAlimentos, :listaGramos
		def initialize (nombr,listA,listG)
			@nombre = nombr
			@listaAlimentos = listA
			@listaGramos = listG
		end
		def getProteinas
			aux = listaAlimentos.head
			aux2 = listaGramos.head
			proteinas = 0
			gramosTotales = 0
			while aux != nil && listaGramos != nil
				proteinas += aux.value.proteinas * (aux2.value/100)
				gramosTotales = aux2.value
				aux = aux.next
				aux2 = aux2.next
			end
			return ((proteinas * 100)/gramosTotales).round(2)
		end

	end
end
