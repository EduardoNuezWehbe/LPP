
require "spec_helper"
require "./lib/practica6/Lista.rb"
require "./lib/practica6/practica6.rb"

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
	it 'existe un nombre para el alimento' do
                expect(alimento).to have_attributes(:nombre => "carne de vaca")
        end
        it 'existe una cantidad de emision gases efecto invernadero' do
		expect(alimento).to have_attributes(:GEI => 50.0)
        end
        it 'existe una cantidad de terreno utilizado en metro cuadrado' do
		expect(alimento).to have_attributes(:terreno => 164.0)
        end
        it 'existe un metodo que devuelva el nombre del alimento' do
		expect(alimento.getNombre).to eq("carne de vaca")
        end
        it 'existe un metodo que devuelva el gas de efecto invernadero' do
		expect(alimento.getGEI).to eq(50.0)
        end
        it 'existe un metodo que devuelva la cantidad de terreno utilizado en metro cuadrado' do
		expect(alimento.getTerreno).to eq(164.0)
        end
        it 'existe un metodo que calcule el valor calorico de un alimento' do
	expect(alimento.getValorCalorico).to eq(96.8)
	@nombre = Practica6::Alimento.new(nil,nil,nil,nil,nil,nil)
	end
	it 'existe un metodo que formatee el alimento a sting' do
		expect(@nombre.to_s).to eq("")
        end
	it 'calcula si la alimentacion es buena para un hombre' do
		expect(((chocolate.getValorCalorico*4) + nuez.getValorCalorico + cerveza.getValorCalorico*2 + lecheDeVaca.getValorCalorico*3).round(2)).to eq(3018.2)
        end
        it 'calcula si la alimentacion es buena para una mujer' do
		expect(((chocolate.getValorCalorico*3) + cafe.getValorCalorico + cerveza.getValorCalorico + lentejas.getValorCalorico).round(2)).to eq(2295.0
)
	end
        it 'calcula el GEI de la dieta' do
		expect((chocolate.getGEI*3 + cafe.getGEI + cerveza.getGEI + lentejas.getGEI).round(2)).to eq(7.94)

	end
	it 'calcula el terreno de la dieta' do
		expect((chocolate.getTerreno*3 + cafe.getTerreno + cerveza.getTerreno + lentejas.getTerreno).round(2)).to eq(14.12)
	end
end


##########################################################################
##################   PRACTICA 7 CONTINUACION  ############################
##########################################################################

describe Practica6::Nodo do
        before :all do
		@nodo = Practica6::Nodo.new("Valor",nil)
		@nodo1 = Practica6::Nodo.new(10,@nodo)
	end
	context "#Nodo" do 
		it 'Debe existir un Nodo de la lista con sus datos anterior y siguiente ' do
			expect(@nodo[:value]).to eq("Valor")
			expect(@nodo[:next]).to eq(nil)
			expect(@nodo[:next]).to eq(nil)
		end
		it "Debe tener un siguiente" do 
			expect(@nodo1.next).to eq(@nodo)
		end
	end
end

RSpec.describe Practica6::Lista do
	before :all do
		@list = Practica6::Lista.new()
		@elementos = %w(1 2 3 4 5)
		@listaG1 = Practica6::Lista.new()
		@lista = Practica6::Lista.new()

		@lista.insert(chocolate.getValorCalorico)
		@lista.insert(cafe.getValorCalorico)
		@lista.insert(lentejas.getValorCalorico)
	end
	it "Existe un nodo head y un tail en la lista" do
		expect(@lista.getHead).not_to eq(nil)
		expect(@lista.getTail).not_to eq(nil)
	end
	it "Existe un metodo de insertar un elemento en la lista" do
		expect(@listaG1.insert(@chocolate)).to eq(true)
		expect(@listaG1.insert(@cafe)).to eq(true)
		expect(@listaG1.insert(@lentejas)).to eq(true)
		expect(@lista.insert(1)).to eq(true)
	end
	it 'prueba de insercion de varios elementos' do
		i = 0
		while i < @elementos.size-1
			expect(@lista.insert(@elementos[i])).to eq(true)
			i += 1
		end
	end
	it "Se extrae el primer elemento de la lista" do
		expect(@lista.extractHead.value).to eq(564.2)
	end
	it "Se extrae el ultimo elemento de la lista" do
		expect(@lista.extractTail).to eq("4")
	end
end

##########################################################################
##################   PRACTICA 8 CONTINUACION  ############################
##########################################################################

RSpec.describe Practica6::Alimento do
	context "#Clase Alimento comparable: " do
		it"Comparando operador < " do
			expect(cafe<lentejas).to eq(true)
		end
		it"Comparando operador > " do
			expect(cafe>lentejas).to eq(false)
		end
		it"Comparando operador == para que falle" do
			expect(cafe==lentejas).to eq(false)
		end
		it"Comparando operador == para que acierte" do
			expect(cafe==cafe).to eq(true)
		end
	end
end

RSsec.describe Practica6::Lista do
	@lista = Practica6::Lista.new()
	@lista.insert(@cafe.getValorCalorico)
	@lista.insert(@carneVaca.getValorCalorico)
	@lista.insert(@lentejas.getValorCalorico)
	context "#Enumerable en lista de alimentos" do
		it"Valor energetico max" do
			expect(@lista.max).to eq(571.8)
		end
	end
end
