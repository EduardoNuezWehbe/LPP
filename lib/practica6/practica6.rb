require "practica6/version.rb"
require "practica6/Lista.rb"
module Practica6
  class Alimento
	  include Comparable
	   attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :GEI, :terreno
        def initialize(nombre,proteinas,carbohidratos,lipidos,gei,terreno)
                @nombre = nombre.to_s
		@proteinas = proteinas 
		@carbohidratos = carbohidratos 
		@lipidos = lipidos 
		@GEI = gei 
		@terreno = terreno 
        end 
        def getNombre 
	        @nombre
        end
        def getGEI
		@GEI
	end
	def getTerreno
		@terreno
	end
	def getLipidos 
		@lipidos
	end	
	def getCarbohidratos 
		@carbohidratos
	end
	def getProteinas
		@proteinas
	end

	def getValorCalorico
		resultado = 0.00
		resultado ='%0.1f'% ((getProteinas*4) +(getLipidos*4) + (getCarbohidratos*9))	
		return resultado.to_f
	end
	def to_s
		s ="#{@nombre}: #{@proteinas} · #{@carbohidratos} · #{@lipidos} · #{@GEI} · #{@terreno}"
		return s
	end
	def <=> (other)
        getValorCalorico <=> other.getValorCalorico
        end
  end
end
