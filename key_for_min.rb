def key_for_min_value(name_hash)
  if name_hash.length == 0
    return nil
  end
  nameHashValues = []
  nameHashValues = name_hash.to_a
  i = nameHashValues.length
  while i > 1
    if nameHashValues.first[1] < nameHashValues.last[1]
      nameHashValues.pop
    else
      nameHashValues.shift
    end
    i -= 1
  end
  name = (name_hash.select { |key, value| value == nameHashValues.first[1] }).to_a
  name[0][0]
end
