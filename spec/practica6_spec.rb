require './lib/practica6.rb'


alimento = Practica6::Alimento.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
carneVaca = Practica6::Alimento.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
carneCordero = Practica6::Alimento.new("carne de cordero", 18.0, 0.0, 17.0, 20.0, 185.0)
camarones = Practica6::Alimento.new("camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
chocolate = Practica6::Alimento.new("chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
salmon = Practica6::Alimento.new("salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
cerdo = Practica6::Alimento.new("cerdo", 21.5, 0.0, 6.3, 7.6, 11.0)
pollo = Practica6::Alimento.new("pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
queso = Practica6::Alimento.new("queso", 25.0, 1.3, 33.0, 11.0, 41.0)
cerveza = Practica6::Alimento.new("cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
lecheDeVaca = Practica6::Alimento.new("leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
huevos = Practica6::Alimento.new("huevos", 13.0, 1.0, 11.0, 4.2, 5.7)
cafe = Practica6::Alimento.new("cafe", 0.1, 0.0, 0.0, 0.4, 0.3)
tofu = Practica6::Alimento.new("tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
lentejas = Practica6::Alimento.new("lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
nuez = Practica6::Alimento.new("nuez", 20.0, 21.0, 54.0, 0.3, 7.9)

alimentos = [carneVaca, carneCordero, camarones, chocolate, salmon, cerdo, pollo, queso, cerveza,
               lecheDeVaca, huevos, cafe, tofu, lentejas, nuez]

describe Practica6::Alimento do
  it 'crea un objeto tipo alimento' do
    expect(alimento).to be_kind_of(Practica6::Alimento)
  end

end
describe Practica6::Alimento do
        
	it 'existe un nombre para el alimento' do
                expect(alimento).to have_attributes(:nombre => "carne de vaca")
        end
end
describe Practica6::Alimento do
        it 'existe una cantidad de emision gases efecto invernadero' do
		expect(alimento).to have_attributes(:GEI => 50.0)
        end
end
describe Practica6::Alimento do
        it 'existe una cantidad de terreno utilizado en metro cuadrado' do
		expect(alimento).to have_attributes(:terreno => 164.0)
        end
end
describe Practica6::Alimento do
        it 'existe un metodo que devuelva el nombre del alimento' do
		expect(alimento.getNombre).to eq("carne de vaca")
        end
end
describe Practica6::Alimento do
        it 'existe un metodo que devuelva el gas de efecto invernadero' do
		expect(alimento.getGEI).to eq(50.0)
        end
end
describe Practica6::Alimento do
        it 'existe un metodo que devuelva la cantidad de terreno utilizado en metro cuadrado' do
		expect(alimento.getTerreno).to eq(164.0)
        end
end
describe Practica6::Alimento do
        it 'existe un metodo que calcule el valor calorico de un alimento' do
		expect(alimento.getValorCalorico).to eq(96.8)
        end
end
describe Practica6::Alimento do
	@nombre = Practica6::Alimento.new(nil,nil,nil,nil,nil,nil)
      	it 'existe un metodo que formatee el alimento a sting' do
		expect(@nombre.to_s).to eq("")
        end
end
describe Practica6::Alimento do
	it 'existe un metodo que evalue si la alimentacion es buena' do
		expect(chocolate.impactoAmbientalHombre((chocolate.getValorCalorico*4),nuez.getValorCalorico,(cerveza.getValorCalorico*2),(lecheDeVaca.getValorCalorico*3))).to eq(3018.2)
        end
end
describe Practica6::Alimento do
        it 'existe un metodo que evalue si la alimentacion es buena' do
		expect(chocolate.impactoAmbientalMujer((chocolate.getValorCalorico*3),cafe.getValorCalorico,cerveza.getValorCalorico,lentejas.getValorCalorico)).to eq(2295.0
)
	end
        it 'existe un metodo que calcule el GEI de la dieta' do
        	expect(chocolate.calculaGEI((chocolate.getGEI*3),cafe.getGEI,cerveza.getGEI,lentejas.getGEI)).to eq(7.94)

	end
	it 'existe un metodo que calcule el terreno de la dieta' do
		    alimento = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)
expect(chocolate.calculaTerreno((chocolate.getTerreno*3),cafe.getTerreno,cerveza.getTerreno,lentejas.getTerreno)).to eq(14.12)
	end
end


##########################################################################
##################   PRACTICA 7 CONTINUACION  ############################
##########################################################################

describe Practica6::Lista do
        lista = Practica6::Lista.new(1)
	it 'crea un objeto tipo lista' do
    		expect(lista).to be_kind_of(Practica6::Lista)
	end
	it 'crea un objeto Struct' do
		struct = Practica6::Nodo.new(5,1,2)	
		expect(struct).to be_kind_of(Practica6::Nodo)
	end
	it 'Existe un Nodo de la lista con sus datos' do
		expect(lista).not_to eq(nil)	
	end
	it 'Existe un head y un tail' do
               expect(lista.head).not_to eq(nil)
               expect(lista.tail).not_to eq(nil)
        end
	it 'Existe un metodo insert head nodo' do
		nodo = Practica6::Nodo.new(2,nil,nil)
		valor = lista.getHead
		lista.insertHead(nodo)
		anterior = lista.getHead.next
		expect(lista.getHead.next).to eq(valor)
		expect(lista.getHead.prev).to eq(nil)
		expect(lista.getHead.value).to eq(2)
		expect(anterior.prev).to eq(lista.getHead)
		expect(anterior.next).to eq(nil)
		expect(anterior.value).to eq(1)
	end	
	it 'Existe un metodo insert tail nodo' do
		nodo = Practica6::Nodo.new(3,nil,nil)
		lista.insertTail(nodo)

		lista.insertTail(Practica6::Nodo.new(4,nil,nil))
		expect(lista.getTail.value).to eq(4)
		expect(lista.getTail.prev.value).to eq(3)
		expect(lista.getTail.prev.next).to eq(lista.getTail)
	end
	it 'Prueba de que se pueden insertar varios elementos' do
		nodo = Practica6::Nodo.new(5,nil,nil)
		nodo2 = Practica6::Nodo.new(6,nil,nil)

		lista.insertTail(nodo)
		lista.insertTail(nodo2)
		expect(lista.getTail.value).to eq(6)
		expect(lista.getTail.prev.value).to eq(5)
		expect(lista.getTail.prev.prev.value).to eq(4)
	end
	it 'Prueba para eliminar el elemento en la ultima posicion' do
		lista.deleteTail()
		expect(lista.getTail.value).to eq(5)

	end
end
