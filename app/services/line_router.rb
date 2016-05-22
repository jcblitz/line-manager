class LineRouter
  attr_reader :lines

  def initialize(lines = [Line::HatLine, Line::ShoeLine])
    @lines = lines
  end

  # returns the first line that a person is eligible to be in based on the eligibilty defined in the line itself
  def direct(person)
    @lines.find { |line| line.for?(person) }
  end
end