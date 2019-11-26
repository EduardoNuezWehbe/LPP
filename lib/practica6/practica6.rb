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
		if @proteinas == other.proteinas
			if @carbohidratos == other.carbohidratos
				if @lipidos == other.lipidos
					if @GEI == other.GEI
						if @terreno == other.terreno
							return 0
						elsif
							terreno > other.terreno
							return 1
						else
							return -1
						end
					elsif
						@GEI > other.GEI
						return 1
					else
						return -1
					end
				elsif
					lipidos > other.lipidos
					return 1
				else
					return -1
				end
			elsif
				carbohidratos > other.carbohidratos
				return 1
			else
				return -1
			end
		elsif
			proteinas > other.proteinas
			return 1
		else
			return -1
		end
	end
  end
end
