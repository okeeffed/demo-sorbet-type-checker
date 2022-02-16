require 'hello_sorbet'

RSpec.describe HelloSorbet do
  describe '#hello' do
    it 'should return "Hello, Sorbet!"' do
      expect(subject.hello).to eq('Hello, Sorbet!')
    end
  end
end
