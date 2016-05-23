require "rails_helper"

RSpec.describe Line::DefaultLine do
  describe '#for?' do
    it "returns true for hat and shoes" do
      person = Person.new(name: "hat guy", shoes: true, hat: true)
      expect(Line::DefaultLine.for?(person)).to eq(true)
    end

    it "returns true for neither hat or shoes" do
      person = Person.new(name: "hat guy", shoes: false, hat: false)
      expect(Line::DefaultLine.for?(person)).to eq(true)
    end

    it "returns true for mixed state of hat and shoes" do
      person = Person.new(name: "hat guy", shoes: true, hat: false)
      expect(Line::DefaultLine.for?(person)).to eq(true)

      person = Person.new(name: "hat guy", shoes: false, hat: true)
      expect(Line::DefaultLine.for?(person)).to eq(true)
    end
  end
end