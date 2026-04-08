# frozen_string_literal: true

require_relative '../lib/fibonacci'

RSpec.shared_examples 'a fibonacci calculator' do |sequence_term, expected|
  it "returns #{expected.inspect}" do
    matcher = expected.nil? ? be_nil : eq(expected)
    expect(described_class.new(sequence_term).calculate).to matcher
  end
end

describe Fibonacci do
  describe '#calculate' do
    include_examples 'a fibonacci calculator', -1, nil
    include_examples 'a fibonacci calculator', 0, 0
    include_examples 'a fibonacci calculator', 1, 1
    include_examples 'a fibonacci calculator', 8, 21
  end
end
