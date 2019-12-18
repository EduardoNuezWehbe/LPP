require "practica6/version.rb"
require "practica6/Lista.rb"
module Practica6
				#clase comparable alimento. Tiene los datos base para realizar el calculo calorico del alimento. 	
  class Alimento
	  include Comparable
	  #attr_reader nombre del alimento, sus proteinas, sus carbohidratos, los lipidos, su gas de efecto invernadero producido y el terreno usado
	   attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :GEI, :terreno
		 		#constructor de la clase
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

	#metodo para devolver el valor calorico del alimento
	def getValorCalorico
		resultado = 0.00
		resultado ='%0.1f'% ((getProteinas*4) +(getLipidos*4) + (getCarbohidratos*9))	
		return resultado.to_f
	end
	#imprimir el alimento formateado
	def to_s
		s ="#{@nombre}: #{@proteinas} · #{@carbohidratos} · #{@lipidos} · #{@GEI} · #{@terreno}"
		return s
	end
	#operador de suma
	def + (other)
		getValorCalorico + other.getValorCalorico
	end
	#operador spaceship que compara con las calorias del alimento
	def <=> (other)
        	getValorCalorico<=>other.getValorCalorico
        end
  end
end
