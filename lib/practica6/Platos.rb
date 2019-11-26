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
		def getLipidos
                        aux = listaAlimentos.head
                        aux2 = listaGramos.head
                        lipidos = 0
                        gramosTotales = 0
                        while aux != nil && listaGramos != nil
                                lipidos += aux.value.lipidos * (aux2.value/100)
                                gramosTotales = aux2.value
                                aux = aux.next
                                aux2 = aux2.next
                        end
                        return ((lipidos * 100)/gramosTotales).round(2)
                end
		def getCarbohidratos
                        aux = listaAlimentos.head
                        aux2 = listaGramos.head
                        carbohidratos = 0
                        gramosTotales = 0
                        while aux != nil && listaGramos != nil
                                carbohidratos += aux.value.carbohidratos * (aux2.value/100)
                                gramosTotales = aux2.value
                                aux = aux.next
                                aux2 = aux2.next
                        end
                        return ((carbohidratos * 100)/gramosTotales).round(2)
                end
		def getGramosTotales
			aux = listaGramos.head
			gramosTotales = 0
			while aux != nil
				gramosTotales = aux.value
				aux = aux.next
			end
			return gramosTotales
		end
		def getValorCaloricoTotal
			proteinas = (getProteinas * getGramosTotales)/100
			carbohidratos = (getCarbohidratos * getGramosTotales)/100
			lipidos = (getLipidos * getGramosTotales)/100
			return (proteinas*4+carbohidratos*9+lipidos*4).round(2)
		end
		def to_s
			output = @nombre
			output << listaAlimentos.to_s
			return output
		end
	end


	class PlatosA < Platos
		def initialize (nombre,listA,listG)
			super(nombre,listA,listG)
		end
		def getEmisionGEI 
			aux = listaAlimentos.head
			aux2 = listaGramos.head

			geiTotal = 0
			while aux != nil && aux2 != nil
				geiTotal = aux.value.GEI * (aux2.value/100)
				aux = aux.next
				aux2 = aux2.next
			end
			return geiTotal.round(2)
		end
		def getTerreno
                        aux = listaAlimentos.head
                        aux2 = listaGramos.head

                        terrenoTotal = 0
                        while aux != nil && aux2 != nil
                                terrenoTotal = aux.value.terreno * (aux2.value/100)
                                aux = aux.next
                                aux2 = aux2.next
                        end
                        return terrenoTotal.round(2)
                end
		def to_s
			 "Eficiencia energetica: #{getValorCaloricoTotal}" + super
		end
	end
end
