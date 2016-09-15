class Xmas

  @@giftarr = [
          "a partridge in a pear tree", "two turtle doves", "three french hens",
          "four calling birds", "five golden rings", "six geese-a-laying",
          "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing",
          "ten lords-a-leaping", "eleven pipers piping", "twelve drummers drumming", "and a partridge in a pear tree"
        ]

  def self.gifts(gift)
    if gift == 0
      return @@giftarr[0]
    elsif gift == 1
      return @@giftarr[1], @@giftarr[12]
    elsif gift == 4
      return @@giftarr[4].upcase
    end
  end

  def self.verse(line)
    if line == 0
      return "On the first day of Christmas my true love gave to me", "a partridge in a pear tree"
    elsif line == 1
      return "On the second day of Christmas my true love gave to me", "two turtle doves", "and a partridge in a pear tree"
    elsif line == 11
return last_verse = <<-SONG
On the twelfth day of Christmas my true love gave to me
twelve drummers drumming
eleven pipers piping
ten lords-a-leaping
nine ladies dancing
eight maids-a-milking
seven swans-a-swimming
six geese-a-laying
FIVE GOLDEN RINGS
four calling birds
three french hens
two turtle doves
and a partridge in a pear tree
SONG
  end
end

  def self.sing
    whole_song = File.read(File.dirname(__FILE__) + '/12days.txt').strip
  end
end
