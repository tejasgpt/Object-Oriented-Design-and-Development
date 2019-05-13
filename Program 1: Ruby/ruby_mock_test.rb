
load 'ruby_intro_18fall.rb'

def scores
  correct = 0
  wrong = 0

  # Q1
  begin
    unique_array([1,2,3,-4,-5,1,3,2]) == [1,2,3,-4,-5] ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q2
  begin
    two_sum?([-1,-2,4,4],2) == true ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q3
  begin
    group_anagrams(['elbow','cried','below','cider']) == [['elbow','below'],['cried','cider']] ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q4
  begin
    palindrome?("pop") == true ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q5
  begin
    remove_and_append_vowels("pray") == 'prya' ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q6
  begin
    highest_frequency_word("She says she got married.") == 'she' ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q7
  begin
    b2 = Book.new("The Great Gatsby", 17.99)
    b2.formatted_price() == "17 dollars and 99 cents only" ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q8
  begin
    b2 = Book.new("The Great Gatsby", 17)
    b2.formatted_price() == "17 dollars only" ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q8
  begin
    b2 = Book.new("The Great Gatsby", 0.98)
    b2.formatted_price() == "98 cents only" ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q10
  begin
    two_sum?([3,4,5],3) == false ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q11
  begin
    two_sum?([3,1,2,2,4],3) == true ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  # Q12
  begin
    group_anagrams(['nat','eat','tea','tan','bat','ate']) == [['nat','tan'],['eat','tea','ate'],['bat']] ? correct+=1 : wrong+=1
  rescue
    wrong+=1
  end

  #puts correct+wrong
  puts correct, wrong, correct+wrong
  return ( (correct).to_f / (wrong + correct) ).round(2) * 100
end


puts scores
