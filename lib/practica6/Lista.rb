require "practica6/version"


module Practica6
	Nodo = Struct.new(:value,:next,:prev)
	class Lista
		attr_reader :head, :tail
		def initialize (valor)
			@head = Nodo.new(valor,nil,nil)
			@tail = Nodo.new(nil,nil,nil)
		end
		def insertHead (nuevoNodo)
                        if @head
                                valor = @head
                                @head = nuevoNodo
                                @head.next = valor
                                valor.prev = @head
                        else
                                @head = nuevoNodo
                        end
                end
		def getHead
                        return @head
                end
		
	end
end
