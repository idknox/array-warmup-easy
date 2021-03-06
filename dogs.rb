require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  return dogs.length
end

def name_lengths(dogs)
  name_lengths=[]
  dogs.each do |dog|
    name_lengths.push(dog.length)
  end
  return name_lengths
end

def reverse_dog_names(dogs)
  dog_reverse=[]
  dogs.each do |dog|
    dog_reverse.push(dog.reverse)
  end
  return dog_reverse
end

def first_three_dogs_with_each(dogs)
  new_array=[]
  (0..2).each do |num|
    new_array.push(dogs[num])
  end
  return new_array
end

def first_three_dogs_without_each(dogs)
  return dogs[0..2]
end

def reverse_case_dog_names(dogs)
  new_array=[]
  dogs.each do |dog|
    new_array.push(dog.swapcase)
  end
  return new_array
end

def sum_of_all_dog_name_lengths(dogs)
  sum = 0
  dogs.each do |dog|
    sum += dog.length
  end
  return sum
end

def dogs_with_long_names(dogs)
  new_array=[]
  dogs.each do |dog|
    if dog.length > 4
      new_array.push(true)
    else
      new_array.push(false)
    end
  end
  return new_array
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

