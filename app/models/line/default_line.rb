class Line::DefaultLine < Line
  # this is a catch all that anyone can be in
  # put this at the end of your chain!
  def self.for?(person)
    true
  end
end