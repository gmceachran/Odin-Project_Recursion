# frozen_string_literal: true

# Computes Fibonacci-related values for a given sequence term.
class Fibonacci
  attr_reader :sequence_term

  def initialize(sequence_term)
    @sequence_term = sequence_term
    @fibs = [0, 1]
  end

  def calculate
    itr = @fibs.length - 1
    return nil if sequence_term.negative?
    return @fibs[sequence_term] if sequence_term <= itr

    next_element(itr)
    calculate if itr < sequence_term
    @fibs[sequence_term]
  end

  def next_element(itr)
    last_element = @fibs[itr]
    penultimate_element = @fibs[itr - 1]
    @fibs << (penultimate_element + last_element)
  end
end
