require 'calculate_time'

RSpec.describe 'calculate_time method' do
    context 'given an empty string' do
        it 'returns zero' do
            result = calculate_time('')
            expect(result).to eq 0
        end
    end

    context 'given a text of under two hundred words' do
        it 'returns one' do
            result = calculate_time('one')
            expect(result).to eq 1
        end
    end

    context 'given a text of two hundred words' do
        it 'returns one' do
            result = calculate_time('one' * 200)
            expect(result).to eq 1
        end
    end
end