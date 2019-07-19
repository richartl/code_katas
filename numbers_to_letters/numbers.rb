class Numbers
  attr_reader :words

  @words = {
    '0': 'zero',
    '1': 'one',
    '2': 'two',
    '3': 'three',
    '4': 'four',
    '5': 'five',
    '6': 'six',
    '7': 'seven',
    '8': 'eight',
    '9': 'nine',
    '10': 'ten',
    '11': 'eleven',
    '12': 'twelve',
    '13': 'thirteen',
    '14': 'fourteen',
    '15': 'fiveteen',
    '16': 'sixteen',
    '17': 'seventeen',
    '18': 'eighteen',
    '19': 'nineteen',
    '20': 'twenty',
    '30': 'thirty',
    '40': 'fourty',
    '50': 'fifty',
    '60': 'sixty',
    '70': 'seventy',
    '80': 'eighty',
    '90': 'ninety',
    '100': 'one hundred',
    '200': 'two hundred',
    '300': 'three hundred',
    '400': 'four hundred',
    '500': 'five hundred',
    '600': 'six hundred',
    '700': 'seven hundred',
    '800': 'eight hundred',
    '900': 'nine hundred',
  }

  def self.to_word(number)
    word = @words[number.to_s.to_sym]
    return word unless word.nil?
    return convert_to_word(number)
  end

  def self.convert_to_word(number)
    size_number = number.to_s.size
    case size_number
    when 3
      return get_3_digits(number)
    when 2
      return get_2_digits(number)
    end
  end

  def self.get_3_digits(number)
    residue = number % 100
    base = number - residue
    return "#{@words[base.to_s.to_sym]} #{convert_to_word(residue)}"
  end

  def self.get_2_digits(number)
    residue = number % 10
    base = number - residue
    "#{@words[base.to_s.to_sym]} #{@words[residue.to_s.to_sym]}"
  end
end
