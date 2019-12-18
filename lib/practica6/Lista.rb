require "practica6/version"


module Practica6
	#struct de nodos, los cuales tendran el valor del alimento, el siguiente alimento y el anterior

	 
	Nodo = Struct.new(:value,:next,:prev)
	#clase lista enumerable que utilizara el struct nodo
	class Lista
		include Enumerable
		#attr_reader el head de la lista y el tail de la lista
		attr_reader :head, :tail
		#contructor
		def initialize 
			@head = @tail = nil
		end
		#devuelve el tamaño de la lista
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
		#comprueba si la lista esta vacia
		def empty
			if(@head ==nil)
				true
			elsif
				false
			end
		end
		#inserta un valor en la lista
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
		#extrae el head de la lista
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
		#extrae el tail de la lista
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
		#inserta varios elementos a la vez en la lista
		def insertVector (vector) 
			vector.each {|n| insert(n)}
		end
		#retorna el head de la lista
		def getHead
                        if @head
				return @head
			end
                end
		#retorna el tail de la lista
		def getTail
			if @tail
                        	return @tail
			end
                end
		#implementado para que la lista sea enumerable
		def each
                aux = @head

                puts aux.value.class
                while(aux != nil)
                        yield aux[:value]
                        aux= aux[:next]
                 end
                end
		#imprime la lista formateada
		def to_s
			toprint = "{\n"
			node = @head
			while(node != nil) do
				toprint += "#{node.value.to_s}\n"
				node = node.next
			end
			toprint += "}"
			return toprint
		end
	end
end
