class Code
  attr_reader :pegs

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }


  def self.valid_pegs?(pegs)
    pegs.all?{|peg| POSSIBLE_PEGS.include?(peg.upcase)}
  end

  def initialize(pegs)
    raise Error unless Code.valid_pegs?(pegs)
    @pegs = pegs.map(&:upcase)
  end

  def self.random(length)
    random_pegs = length.times.map { POSSIBLE_PEGS.keys.sample }
    Code.new(random_pegs)
  end

  def self.from_string(string)
    Code.new(string.split(""))
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(code)
    count = 0
    code.pegs.each_with_index do |ele,idx|
      if ele == @pegs[idx]
        count += 1
      end
    end
    count
  end  

  def num_near_matches(code)
    count = 0
    code.pegs.each_with_index do |ele, idx|
      if ele != @pegs[idx] && @pegs.include?(ele)
        count += 1
      end
    end
    count
  end

  def ==(code)
    self.pegs == code.pegs
  end

end
