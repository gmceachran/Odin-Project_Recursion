# frozen_string_literal: true

# Computes Fibonacci-related values for a given sequence term.
class Fibonacci
  attr_reader :sequence_term

  def initialize(sequence_term)
    @sequence_term = sequence_term
    @fibs = [0, 1]
  end

  def calculate(itr = 1)
    return nil if sequence_term.negative?
    return @fibs[sequence_term] if sequence_term <= (@fibs.length - 1)

    next_element
    itr += 1
    calculate(itr) if itr < sequence_term
    @fibs[@fibs.length - 1]
  end

  def next_element
    last_element = @fibs[@fibs.length - 1]
    penultimate_element = @fibs[@fibs.length - 2]
    @fibs << (penultimate_element + last_element)
  end
end
