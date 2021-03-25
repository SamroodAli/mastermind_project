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

end
