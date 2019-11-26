require "practica6/version"


module Practica6
	Nodo = Struct.new(:value,:next,:prev)
	class Lista
		include Enumerable
		attr_reader :head, :tail
		def initialize 
			@head = @tail = nil
		end
		def size
			contador = 0
			if @head[:value] != nil then
				contador = 1
			end
			auxiliar = @head
			until auxiliar[:next] == nil do
				contador+=1
				auxiliar = auxiliar[:next]
			end
			contador
		end
		def empty
			if(@head ==nil)
				true
			elsif
				false
			end
		end
		def insert (valor)
			nodo = Nodo.new(valor)
			if(empty)
				@head = nodo
				@tail = nodo
			elsif
				@tail.next = nodo
				nodo.prev = @tail
				@tail = nodo	
			end
			true
		end
		def extractHead
			nodo = @head
			if nodo != nil
				if nodo.next != nil
					@head = nodo.next
				else
					@head = nil
					@tail = nil
				end
			end
			nodo
		end
		def extractTail
			auxiliar = nil
			if @tail[:value] == nil
				auxiliar = nil
			else
				auxiliar = @tail[:value]
				@tail = @tail[:prev]
				@@tail = nil
			end
			if @tail == nil
				@tail = Nodo.new
				@head = @tail
			end
			auxiliar
		end
		def insertVector (vector) 
			vector.each {|n| insert(n)}
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
