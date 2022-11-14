require 'verify_text'

RSpec.describe 'verify_text method' do
    it 'receives a string and it returns true' do
        result = verify_text('Hello!')
        expect(result).to eq true
    end

    it 'receives a string and it returns false' do
        result = verify_text('hello')
        expect(result).to eq false
    end

    it 'receives an empty string and it returns false' do
        result = verify_text('')
        expect(result).to eq false
    end

    it 'receives a string and it returns false' do
        result = verify_text('Hello.world')
        expect(result).to eq false
    end

    it 'receives a string and it returns false' do
        result = verify_text('helloworld!')
        expect(result).to eq false
    end
end
