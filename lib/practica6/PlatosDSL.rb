require "practica6/version"

module Practica6
        class PlatosDSL
                attr_accessor :nombre, :listaAlimentos, :listaGramos
                def initialize(nombre, &block)
                        @nombre = nombre
                        @listaAlimentos = []
                        @listaGramos = []
                        if block_given?
                                if block.arity == 1
                                        yield self
                                else
                                        instance_eval(&block)
                                end
                        end
                end
                def to_s

                        output = @nombre
                        contador = 0
                        output << " = "
                        while(contador < @listaAlimentos.size()) do
                                output << " [ "
                                output << @listaAlimentos[contador]
                                output << " - "
                                output << @listaGramos[contador].to_s
                                output << " ] "
                                contador = contador + 1
                        end
                        return output
                end
                def alimento ( name , options = {} )
                        @listaAlimentos.push(name)
                        @listaGramos << options[:gramos] if
                                        options[:gramos]
                end
#               def alimento ( options = {} )
#                       puts options    
#                       @listaAlimentos << options[:descripcion] if 
#                                               options[:descripcion]
#                       @listaGramos << options[:gramos] if 
#                                       options[:gramos]                
#               end
                def nombre( nombre )
                        @nombre = nombre
                end
        end
end
