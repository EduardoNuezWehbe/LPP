require './lib/practica6.rb'



describe Practica6::Alimento do
  it 'crea un objeto tipo alimento' do
    alimento = Practica6::Alimento.new
    expect(alimento).to be_kind_of(Practica6::Alimento)
  end

end
describe Practica6::Alimento do
        carneVaca = Practica6::Alimento.new("carne de vaca",21.1,0.0,3.1,50.0,164.0)
        it 'existe un nombre para el alimento' do
                expect(carneVaca).to have_attributes(:nombre => "carne de vaca")
        end
end

