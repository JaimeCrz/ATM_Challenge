require './lib/person.rb'
require './lib/atm.rb'
require 'pry'



describe Person do
    subject {described_class.new(name: 'Thomas')}
    let(:account) {instance_double('Account', owner: subject)}


    it 'is expected to have a :name on initialize' do
        expect(subject.name).to eq 'Thomas'
    end

    it 'is expected to raise an error if no name is set' do
      expect { described_class.new }.to raise_error 'A name is required'
    end

    it 'it is expected to have a :cash attribute with the value of 0 on initialize' do
      expect(subject.cash).to eq 0
    end

    it 'is expected to have a :account attribute' do
        binding.pry
        expect(subject.account).to eq account
    end

end