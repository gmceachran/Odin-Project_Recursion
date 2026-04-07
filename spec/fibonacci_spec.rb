# frozen_string_literal: true

require_relative '../lib/fibonacci'

describe Fibonacci do
  describe '#calculate' do
    context 'when sequence_term is negative' do
      subject(:negative_term) { described_class.new(-1) }
      it 'returns nil' do
        nil_calculation = negative_term.calculate
        expect(nil_calculation).to be nil
      end
    end

    context 'when sequence_term is 0' do
      subject(:zero_term) { described_class.new(0) }
      it 'returns 0' do
        zero_calculation = zero_term.calculate
        expect(zero_calculation).to eq(0)
      end
    end

    context 'when sequence_term is 1' do
      subject(:one_term) { described_class.new(1) }
      it 'returns 1' do
        calculate_one = one_term.calculate
        expect(calculate_one).to eq(1)
      end
    end

    context 'when sequence_term is 8' do
      subject(:eight) { described_class.new(8) }
      it 'returns 21' do
        calculation = eight.calculate
        expect(calculation).to eq(21)
      end
    end
  end
end
