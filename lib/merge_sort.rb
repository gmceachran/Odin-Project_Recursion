# frozen_string_literal: true

def merge(list_a, list_b)
  merged = []
  merged << (list_a[0] < list_b[0] ? list_a.shift : list_b.shift) until list_a.empty? || list_b.empty?
  merged.concat(list_a).concat(list_b)
end

def merge_sort(list)
  return list if list.length == 1

  half = list.length / 2
  list_a = list.first(half)
  list_b = list.last(list.length - half)

  list_a = merge_sort(list_a)
  list_b = merge_sort(list_b)

  merge(list_a, list_b)
end
