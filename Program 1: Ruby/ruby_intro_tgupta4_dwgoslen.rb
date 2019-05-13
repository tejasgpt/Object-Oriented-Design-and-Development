# Part 1

def unique_array(a)
  a.uniq
end

def two_sum?(a,n)
  a.each_with_index do |first_val, i|
    b = a[i, a.length - 1 - i]
    b.each { |second_val| return true if first_val + second_val == n }
  end

  false
end

def group_anagrams(a)
  words = {}
  a.each { |word| words[word.chars.sort.join] = [] }
  a.each { |word| words[word.chars.sort.join] += [word] }
  words.values
end

# Part 2

def palindrome?(s)
  s.downcase!      # Assignment requires even mixed arguments to return true value
  s.reverse == s
end

def remove_and_append_vowels(s)
  vowels = s.chars.select { |char| char =~ /[aeiou]/i }
  without = s.chars.reject { |char| char =~ /[aeiou]/i }
  without.concat(vowels).join
end

def highest_frequency_word(s)
  highest_frequency = 0
  most_frequent_word = ''
  words = s.split
  words
      .group_by { |word| word.downcase }
      .each do |word, occurences|
        if occurences.size > highest_frequency
          most_frequent_word = word
          highest_frequency = occurences.size
        end
      end
  most_frequent_word
end

# Part 3

class Book
  attr_accessor :name, :price

  def initialize(name, price)
    raise ArgumentError,
			"Illegal argument" if name.empty? or price <= 0
    @name = name
    @price = price
  end

  def formatted_price
    if @price.is_a? Integer
      return "#{@price} dollar#{s(@price)} only"
    else
      @price = (@price * 100.00).round(0) # There was a rounding error occuring here since @price is a Float
      c = @price % 100
      d = @price / 100
      if d == 0
        return "#{c} cent#{s(c)} only"
      =begin
      The method ignores float values with 0 cents 
      like 2.00 gives "2 dollars and 0 cents only" 
      instead of "2 dollars only"
      =end
      elsif c == 0
        return "#{d} dollar#{s(d)} only"  
      else
        return "#{d} dollar#{s(d)} and #{c} cent#{s(c)} only"
      end
    end
  end

  def s(rate)
    if rate == 1
     return ""
    else
     return "s"
    end
  end
end
