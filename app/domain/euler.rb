class Euler

  def self.ex1
    (1...1000).to_a.select{|c| (c%3).zero? or (c%5).zero?}.inject(:+)
  end

  # def ex2
  #   arr = [1,2]
  #   3999999.times do
  #     a = arr[-1] + arr[-2]
  #     arr << a
  #   end
  #   arr.select{|c| c.even?}.inject(:+)
  # end

  def ex16
    (2**1000).to_s.scan(/./).map{|c| c.to_i}.inject(:+)
  end

  def ex17
    str = ''
    (1..1000).each{|c| str << c.humanize}
    str.gsub(/([-() ,])/, '').size
  end

  def ex19
    startDate = Date.new(1901, 1, 1)
    endDate = Date.new(2000,12,31)
    (startDate..endDate).select{|d| d.sunday? and d.mday == 1}.count
  end

  def ex20
    (1..100).inject(:*).to_s.scan(/./).map{|c| c.to_i}.inject(:+)
  end
end
