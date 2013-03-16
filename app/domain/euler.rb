class Euler

  CURRENT_DIR   = File.dirname(__FILE__)
  NUMBERS_PATH = File.join(CURRENT_DIR, '../exercises/problem13.txt')

  def self.ex1
    (1...1000).to_a.select{|c| (c%3).zero? or (c%5).zero?}.inject(:+)
  end

  # def self.ex2
  #   arr = [1,2]
  #   3999999.times do
  #     a = arr[-1] + arr[-2]
  #     arr << a
  #   end
  #   arr.select{|c| c.even?}.inject(:+)
  # end
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
