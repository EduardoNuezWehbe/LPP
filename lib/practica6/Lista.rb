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
		def insertVector (vector) 
			vector.each {|n| insertTail(n)}
		end	
			
		def deleteTail
			if @tail == @head
				@tail = nil
				@head = nil
			elsif @tail.value != nil 			 
				valor = @tail.prev
				valor.next = nil
				@tail = valor
			end

		end
		def deleteHead
			if @head == @tail
				@tail = nil
				@head = nil
			elsif @head.value != nil
				valor = @head.next
				valor.prev = nil
				@head = valor
			end
		end
	
		def getHead
                        if @head
				return @head
			end
                end
		def getTail
			if @tail
                        	return @tail
			end
                end
	end
end
