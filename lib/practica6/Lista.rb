require "practica6/version"


module Practica6
	Nodo = Struct.new(:value,:next,:prev)
	class Lista
		attr_reader :head, :tail
		def initialize ()
		 #	@head = Nodo.new(valor,nil,nil)
		#	@tail = Nodo.new(nil,nil,nil)
		end
	end
end
