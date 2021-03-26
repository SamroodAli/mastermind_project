require_relative "code"

class Mastermind
  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(code)
    puts @secret_code.num_exact_matches(code)
    puts @secret_code.num_near_matches(code)
  end

  def ask_user_for_guess
    puts "Enter a code"
    input = gets.chomp
    input = Code.from_string(input)
    exact_matches = @secret_code.num_exact_matches(input)
    puts exact_matches
    puts @secret_code.num_near_matches(input)
    @secret_code.length == exact_matches
  end
end
