class Line::ShoeLine < Line
  def self.for?(person)
    person.shoes?
  end
end