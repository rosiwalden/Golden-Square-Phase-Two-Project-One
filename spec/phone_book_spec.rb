require 'phone_book'

RSpec.describe PhoneBook do 
    context 'with no entries' do 
        it 'has an empty list' do
            phone_book = PhoneBook.new
            expect(phone_book.list).to eq []
        end 
    end

    context 'given an entry with a number only' do 
        it 'stores the number' do 
            phone_book = PhoneBook.new
            phone_book.extract_numbers('07800000000')
            expect(phone_book.list).to eq ['07800000000']
        end
    end

    context 'given an entry with a number in it' do 
        it 'stores the number' do 
            phone_book = PhoneBook.new
            phone_book.extract_numbers('I was calling my friend 07800000000 the other day')
            expect(phone_book.list).to eq ['07800000000']
        end
    end

    context 'given an entry with two numbers in it' do 
        it 'stores both numbers' do 
            phone_book = PhoneBook.new
            phone_book.extract_numbers('My faves: 07800000000, 07800000001')
            expect(phone_book.list).to eq ['07800000000', '07800000001']
        end
    end
    
    context 'given an entry with no numbers' do 
        it 'stores nothing' do 
            phone_book = PhoneBook.new
            phone_book.extract_numbers('My faves.')
            expect(phone_book.list).to eq []
        end
    end 

    context 'given two entries with numbers' do 
        it 'stores all numbers seen' do 
            phone_book = PhoneBook.new
            phone_book.extract_numbers('My friend George is 07800000000')
            phone_book.extract_numbers('My friend Sarah is 07800000001')
            expect(phone_book.list).to eq ['07800000000', '07800000001']
        end
    end 

    context 'given an entry with a number with too few digits' do 
        it 'does not store the number' do 
            phone_book = PhoneBook.new
            phone_book.extract_numbers('My friend George is 0780000000')
            expect(phone_book.list).to eq []
        end
    end

    context 'given entries that have duplicate numbers' do
        it 'only stores unique numbers' do 
            phone_book = PhoneBook.new
            phone_book.extract_numbers('My friend George is 07800000000')
            phone_book.extract_numbers('My mate George is 07800000000')
            expect(phone_book.list).to eq ['07800000000']
        end
    end
end 