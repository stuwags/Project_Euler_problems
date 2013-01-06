names_file = File.new("names.txt", "r") #import txt file
names = names_file.read.split(",").sort #list of names into an array of names, sorted alphabetically. (they still have quotation marks around each name)

#this create a hash which takes an uppercase letter key and returns an int value for it
letters = {}
letter_value = 1
for i in "A".."Z"
  letters[i] = letter_value
  letter_value += 1
end

#this counts the number of names, as I'm not using a for loop
names_ticker = 1; value = 0
names.each do |name|
  sum = 0;
  name.split(//).each do |char| #this splits each name to single letter strings
    if char != "\"" #ignores quotation marks
      sum += letters[char]
    end
  end
  value += sum * names_ticker
  names_ticker += 1
  puts value
end