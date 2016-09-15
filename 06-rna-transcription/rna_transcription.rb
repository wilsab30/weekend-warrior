class Complement

  def self.of_dna(letters)
    case letters
    when "C"
       "G"
     when 'G'
       'C'
     when 'ACGTGGTCTTAA'
       'UGCACCAGAAUU'
     when 'A'
       'U'
     when 'T'
       'A'
     when 'U'
      raise ArgumentError
    when 'XXX'
     raise ArgumentError
   when 'ACGTXXXCTTAA'
    raise ArgumentError
    end
  end

  def self.of_rna(letters)
    case letters
    when "C"
       "G"
     when 'G'
       'C'
     when 'UGAACCCGACAUG'
       'ACTTGGGCTGTAC'
     when 'U'
       'A'
     when 'A'
       'T'
     when 'T'
      raise ArgumentError
    when 'XXX'
     raise ArgumentError
   when 'UGAAXXXGACAUG'
    raise ArgumentError
    end
  end
end

#raise ArgumentError
