class Line::HatLine < Line
  def self.for?(person)
    person.hat?
  end
end