require "rails_helper"

RSpec.describe RoutePerson do
  
  before(:each) do
    Line.delete_all
    @hat_line = Line::HatLine.create({name: 'Hat Line', people: [] })
    @shoe_line = Line::ShoeLine.create({name: 'Shoe Line', people: [] })
  end

  describe '#call' do 
    it 'adds a hat person to the hat line' do
      person = Person.new(name: 'hat guy', shoes: false, hat: true)
      rp = RoutePerson.new
      rp.call(person)

      @hat_line.reload
      @shoe_line.reload
      expect(@hat_line.people.count).to eq (1)
      expect(@shoe_line.people.count).to eq (0)
    end

    it 'adds a shoe person to the shoe line' do
      person = Person.new(name: 'hat guy', shoes: true, hat: false)
      rp = RoutePerson.new
      rp.call(person)

      @hat_line.reload
      @shoe_line.reload
      expect(@hat_line.people.count).to eq (0)
      expect(@shoe_line.people.count).to eq (1)
    end
  end
end