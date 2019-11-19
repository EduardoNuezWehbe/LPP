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
			if @head.value != nil && @head.next == nil
				valor = @head
				@head = nuevoNodo
				@tail = valor
				@head.next = @tail
				@tail.prev = @head
			elsif @head.value != nil
                                valor = @head
                                @head = nuevoNodo
                                @head.next = valor
                                valor.prev = @head
                        else
                                @head = nuevoNodo
                        end
		end
		def insertTail (nuevoNodo)
			if @tail.value != nil
				valor = @tail
				@tail = nuevoNodo
				valor.next = @tail
				@tail.prev = valor
			else
				@tail = nuevoNodo
				@tail.prev = @head
				@head.next = @tail
				
			end
		end
		def getHead
                        return @head
                end
		def getTail
                        return @tail
                end
	end
end
