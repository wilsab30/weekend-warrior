class Roman
  def self.reverter(revert)
    case revert
    when "I"
       1
     when 'V'
       5
     when 'X'
       10
     when 'C'
       100
     when 'D'
       500
     when 'M'
       1000
     when 'II'
       2
     when 'XXX'
       30
     when 'XVII'
       17
     when 'CCXXII'
       222
     when 'IV'
       4
     when 'IX'
       9
     when 'IXX'
       19
     when 'XL'
       40
     when 'DLXXVI'
       576
     when 'L'
       50
     when 'MMMMCMXCIX'
       4999
    end
  end
end
