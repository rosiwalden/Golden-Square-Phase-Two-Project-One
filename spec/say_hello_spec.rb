require 'say_hello'

RSpec.describe 'say_hello method' do
    it 'says hello' do 
        result = say_hello('Kay')
        expect(result).to eq 'hello Kay'
    end
end