require_relative '../Ruby/dynamic_instance_variables'

RSpec.describe 'GenericEntity' do
  describe 'is a class that dynamically sets its own instance variables' do
    it 'should be able to define a getter and setter when passed key/value pairs' do
      test = GenericEntity.new(color: 'blue')
      expect(test.color).to eq('blue')
    end
  end

  it 'should be able to handle multiple attributes' do
    test = GenericEntity.new(breed: 'Shiba Inu', name: 'Shoji', age: 2)
    expect(test.breed).to eq('Shiba Inu')
    expect(test.name).to eq('Shoji')
    expect(test.age).to eq(2)
  end
end
