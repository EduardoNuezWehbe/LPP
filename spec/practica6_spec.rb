require './lib/practica6.rb'



describe Practica6::Alimento do
  it 'crea un objeto tipo alimento' do
    alimento = Practica6::Alimento.new
    expect(alimento).to be_kind_of(Practica6::Alimento)
  end

end

