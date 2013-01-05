
# first nine numbers are 36 letters
# first ten numbers are 39 letters
# elevent to nineteen is 67 letters

sum_to_nine = 36
sum_to_ten = 39
sum_from_eleven_to_nineteen = 6+6+8+8+7+7+9+8+8
# now we are at nineteen

sum_from_twenty_to_ninety_nine = (((6*10)+36)*4) + (((5*10)+36)*3) + ((7*10)+36)

sum_to_ninety_nine = sum_from_twenty_to_ninety_nine +
sum_from_eleven_to_nineteen + sum_to_ten
# now we are at ninty-nine
puts (((10 * 100)+(3*99) + sum_to_ninety_nine)*3) + sum_to_ninety_nine + (((12 * 100) + (3*99) + sum_to_ninety_nine)*3) + (((11 * 100) + (3*99) + sum_to_ninety_nine)*3) + 11