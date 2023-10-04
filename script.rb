def substrings(string,dictionary)
    len = string.length
    string = string.downcase!
    start = 0
    finish = 0
    sub_array = []
    result = {}
    len.times do |i|
      while finish <= len do
        if start != finish then sub_array.push(string[start...finish])
        end
        finish += 1
      end
    start += 1
    finish = start
    end
    dictionary.each do |word|
        count = sub_array.count(word)
        if sub_array.include?(word)
          result[word] = count
        end
    end
    p result
  end