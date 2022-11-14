require 'fizzbuzz'

RSpec.describe 'fizzbuzz method' do
    it 'for an ordinary number it returns the number' do
        result = fizzbuzz(1)
        expect(result).to eq 1
    end

    it 'returns fizz if the number is divisble by 3' do
        result = fizzbuzz(9)
        expect(result).to eq 'Fizz'
    end

    it 'returns buzz if the number is divisble by 5' do
        result = fizzbuzz(10)
        expect(result).to eq 'Buzz'
    end

    it 'returns fizzbuzz if the number is divisble by 15' do
        result = fizzbuzz(30)
        expect(result).to eq 'Fizzbuzz'
    end
end
