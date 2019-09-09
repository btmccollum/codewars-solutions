# Numbers ending with zeros are boring.

# They might be fun in your world, but not here.

# Get rid of them. Only the ending ones.

# 1450 -> 145
# 960000 -> 96
# 1050 -> 105
# -1050 -> -105
# Zero alone is fine, don't worry about it. Poor guy anyway

def no_boring_zeros(num)
return 0 if num == 0

  new_num = num.to_s
  if new_num[-1] == "0"
    no_boring_zeros(new_num[0..-2])
  else
    return new_num.to_i
  end
end
