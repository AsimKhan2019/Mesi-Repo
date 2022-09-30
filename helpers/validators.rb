def validate_age(age)
  age.to_i.to_s == age
end

def permit(letter)
  (letter != 'N')
end
