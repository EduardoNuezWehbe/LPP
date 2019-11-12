require "practica6/version"

module Practica6
  class Error < StandardError; end
  class Alimento
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
  end
end
