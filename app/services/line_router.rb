class LineRouter
  attr_reader :lines

  # the default could also be `Line.select(:type).distinct` so every line available would initialize
  def initialize(lines = [Line::HatLine, Line::ShoeLine, Line::DefaultLine])
    @lines = lines
  end

  # returns the first line that a person is eligible to be in based on the eligibilty defined in the line itself
  def direct(person)
    @lines.find { |line| line.for?(person) }
  end
end