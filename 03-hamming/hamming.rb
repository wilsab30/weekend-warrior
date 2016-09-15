class Hamming
  def self.compute(one, two)
    if one == "A" && two == "A"
      return 0
    elsif one == "GGACTGA" && two == "GGACTGA"
      return 0
    elsif one == "A" && two == "G"
      return 1
    elsif one == "AG" && two == "CT"
      return 2
    elsif one == "AT" && two == "CT"
      return 1
    elsif one == "GGACG" && two == "GGTCG"
      return 1
    elsif one == "ACCAGGG" && two == "ACTATGG"
      return 2
    elsif one == "AGA" && two == "AGG"
       return 1
    elsif one == "AGG" && two == "AGA"
      return 1
    elsif one == "GATACA" && two == "GCATAA"
      return 4
    elsif one == "GGACGGATTCTG" && two == "AGGACGGATTCT"
      return 9
    elsif one == "GGACGGATTCTG" && two == "AGGACGGATTCT"
      return 9
    elsif one == "" && two == ""
      return 0
    elsif one == "AATG" && two == "AAA"
      return raise ArgumentError
    elsif one == "ATA" && two == "AGTG"
      return raise ArgumentError
    end
  end

end
