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

    next_element
    calculate
    @fibs[sequence_term]
  end

  private

  def next_element
    last_element = @fibs.last
    penultimate_element = @fibs[-2]
    @fibs << (penultimate_element + last_element)
  end
end
