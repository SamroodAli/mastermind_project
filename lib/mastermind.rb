require_relative "code"

class Mastermind
  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(code)
    puts "Exact matches:" + code.num_exact_matches.to_s
    puts "Near matches:" + code.num_near_matches
  end
end
