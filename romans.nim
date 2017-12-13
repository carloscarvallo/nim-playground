proc decimalToRoman*(number: range[1..3_999]): string =
    ## Converts a number to a Roman numeral.
    const romanComposites = {
        "M": 1000, "CM": 900,
        "D": 500, "CD": 400, "C": 100,
        "XC": 90, "L": 50, "XL": 40, "X": 10, "IX": 9,
        "V": 5, "IV": 4, "I": 1 }
    result = ""
    var decVal = number.int

    for key, val in items(romanComposites):
        while decVal >= val:
            decVal -= val
            result.add(key)

echo decimalToRoman(1009) # MIX