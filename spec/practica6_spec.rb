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
		expect(carneVaca.getValorCalorico).to eq("96.8")
        end
end





