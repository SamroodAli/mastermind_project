class Code
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

end
