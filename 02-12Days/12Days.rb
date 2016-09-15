class Xmas

  @@giftarr = [
          "a partridge in a pear tree", "two turtle doves", "three french hens",
          "four calling birds", "five golden rings", "six geese-a-laying",
          "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing",
          "ten lords-a-leaping", "eleven pipers piping", "twelve drummers drumming", "and a partridge in a pear tree"
        ]

        @@song = File.read(File.dirname(__FILE__) + '/12days.txt').split("\n")

  def self.gifts(gift)
    if gift == 0
      return @@giftarr.first
    elsif gift == 1
      return @@giftarr[1], @@giftarr[12]
    elsif gift == 4
      return @@giftarr[4].upcase
    end
  end

  def self.verse(line)
    if line == 0
      return @@song[0], @@song[1]
    elsif line == 1
      return @@song[2], @@song[3], @@song[4]
    end
    if line == 11
      output = ""
      @@song[-13..-1].each do |i|
        output = output + i +"\n"
        end
        return output
    end

  end


  def self.sing
    whole_song = File.read(File.dirname(__FILE__) + '/12days.txt').strip
  end
end
