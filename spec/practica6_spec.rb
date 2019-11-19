require './lib/practica6.rb'



describe Practica6::Alimento do
  it 'crea un objeto tipo alimento' do
    alimento = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)

    expect(alimento).to be_kind_of(Practica6::Alimento)
  end

end
describe Practica6::Alimento do
        carneVaca = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)
        it 'existe un nombre para el alimento' do
                expect(carneVaca).to have_attributes(:nombre => "carne de vaca")
        end
end
describe Practica6::Alimento do
        carneVaca = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)
        it 'existe una cantidad de emision gases efecto invernadero' do
		expect(carneVaca).to have_attributes(:GEI => 50.0)
        end
end
describe Practica6::Alimento do
        carneVaca = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)
        it 'existe una cantidad de terreno utilizado en metro cuadrado' do
		expect(carneVaca).to have_attributes(:terreno => 164.0)
        end
end
describe Practica6::Alimento do
        carneVaca = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)
        it 'existe un metodo que devuelva el nombre del alimento' do
		expect(carneVaca.getNombre).to eq("carne de vaca")
        end
end
describe Practica6::Alimento do
        carneVaca = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)
        it 'existe un metodo que devuelva el gas de efecto invernadero' do
		expect(carneVaca.getGEI).to eq(50.0)
        end
end
describe Practica6::Alimento do
        carneVaca = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)
        it 'existe un metodo que devuelva la cantidad de terreno utilizado en metro cuadrado' do
		expect(carneVaca.getTerreno).to eq(164.0)
        end
end
describe Practica6::Alimento do
        carneVaca = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)
        it 'existe un metodo que calcule el valor calorico de un alimento' do
		expect(carneVaca.getValorCalorico).to eq(96.8)
        end
end
describe Practica6::Alimento do
        carneVaca = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)
	@nombre = Practica6::Alimento.new(nil,nil,nil,nil,nil,nil)
      	it 'existe un metodo que formatee el alimento a sting' do
		expect(@nombre.to_s).to eq("")
        end
end
describe Practica6::Alimento do
	chocolate = Practica6::Alimento.new("chocolate",5.3,47.0,30.0,2.3,3.4)
	lecheDeVaca = Practica6::Alimento.new("leche de vaca",3.3,4.8,3.2,3.2,8.9)
	nuez = Practica6::Alimento.new("nuez",20.0,21.0,54.0,0.3,7.9)
	cerveza = Practica6::Alimento.new("cerveza",0.5,3.6,0.0,0.24,0.22)
       	
	it 'existe un metodo que evalue si la alimentacion es buena' do
		expect(chocolate.impactoAmbientalHombre((chocolate.getValorCalorico*4),nuez.getValorCalorico,(cerveza.getValorCalorico*2),(lecheDeVaca.getValorCalorico*3))).to eq(3018.2)
        end
end
describe Practica6::Alimento do
        chocolate = Practica6::Alimento.new("chocolate",5.3,47.0,30.0,2.3,3.4)
	cafe = Practica6::Alimento.new("cafe",0.1,0.0,0.0,0.4,0.3)
	lentejas = Practica6::Alimento.new("lentejas",23.5,52.0,1.4,0.4,3.4)
        cerveza = Practica6::Alimento.new("cerveza",0.5,3.6,0.0,0.24,0.22)

        it 'existe un metodo que evalue si la alimentacion es buena' do
		expect(chocolate.impactoAmbientalMujer((chocolate.getValorCalorico*3),cafe.getValorCalorico,cerveza.getValorCalorico,lentejas.getValorCalorico)).to eq(2295.0
)
	end
        it 'existe un metodo que calcule el GEI de la dieta' do
        expect(chocolate.calculaGEI((chocolate.getGEI*3),cafe.getGEI,cerveza.getGEI,lentejas.getGEI)).to eq(7.94)

	end
end







