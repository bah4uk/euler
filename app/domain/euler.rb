class Euler

  CURRENT_DIR   = File.dirname(__FILE__)
  NUMBERS_PATH = File.join(CURRENT_DIR, '../exercises/problem13.txt')

  def self.ex1
    (1...1000).to_a.select{|c| (c%3).zero? or (c%5).zero?}.inject(:+)
  end

  def self.ex2
    arr = [1,2]
    while arr.last < 4000000 do
      arr << arr[-1] + arr[-2]
    end
    arr.select{|c| c.even?}.inject(:+)
  end

  def self.ex4
    max = 100*100
    100.upto(999) do |anum|
      100.upto(999) do |bnum|
        num = anum*bnum
        max = num if (num.to_s == num.to_s.reverse and num > max)
      end
    end
    max
  end

  def self.ex6
    sum_sq = (1..100).map{|c| c*c}.inject(:+)
    sq_sum = (1..100).to_a.inject(:+)**2

    sq_sum - sum_sq
  end

  def self.ex5
    arr = (1..20).to_a
    smallest = 20
    biggest = arr.inject(:*)
    1.upto(biggest) do |num|
      flag = true
      if num.odd?
        next
      else
        arr.each do |n| 
          if !(num%n==0)
            flag = false
          end
        end
      end
      smallest = num if flag
      break if flag
    end
    smallest
  end

  def self.ex8
    result = 0
    number = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450
    str = number.to_s
    0.upto(995) do |num|
      if str[num..num+4].scan(/./).include?('0') then
        next
      end
      if str[num..num+4].to_i > result
        result = str[num..num+4].to_i
      end
    end
    result.to_s.scan(/./).map{|c| c.to_i}.inject(:*)
  end
  
  def self.ex13
    num = File.open(NUMBERS_PATH, "rb").read.split.map{|c| c.to_i}
                                       .inject(:+).to_s[0..9].to_i
  end

  def self.ex16
    (2**1000).to_s.scan(/./).map{|c| c.to_i}.inject(:+)
  end

  def self.ex17
    str = ''
    (1..1000).each{|c| str << c.humanize}
    str.gsub(/([-() ,])/, '').size
  end

  def self.ex19
    startDate = Date.new(1901, 1, 1)
    endDate = Date.new(2000,12,31)
    (startDate..endDate).select{|d| d.sunday? and d.mday == 1}.count
  end

  def self.ex20
    (1..100).inject(:*).to_s.scan(/./).map{|c| c.to_i}.inject(:+)
  end
end
