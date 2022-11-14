require 'count_words'

RSpec.describe 'count_words' do
    it 'returns 0 for an empty string' do 
        result = count_words('')
        expect(result).to eq 0
    end

    it 'counts words in a string' do 
        result = count_words('hello good morning')
        expect(result).to eq 3
    end

    it 'counts words in a string' do 
        result = count_words('this is a longer string to try')
        expect(result).to eq 7
    end
end