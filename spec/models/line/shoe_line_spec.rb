require "rails_helper"

RSpec.describe Line::ShoeLine do
  describe '#for?' do
    it "returns true for people wearing shoes" do
      person = Person.new(name: "shoe guy", shoes: true, hat: false)
      expect(Line::ShoeLine.for?(person)).to eq(true)
    end

    it "returns false for people not wearing shoe" do
      person = Person.new(name: "shoe guy", shoes: false, hat: true)
      expect(Line::ShoeLine.for?(person)).to eq(false)
    end
  end
end