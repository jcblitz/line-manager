require "rails_helper"

RSpec.describe Line::HatLine do
  describe '#for?' do
    it "returns true for people wearing hats" do
      person = Person.new("hat guy", false, true)
      expect(Line::HatLine.for?(person)).to eq(true)
    end

    it "returns false for people not wearing hats" do
      person = Person.new("hat guy", false, false)
      expect(Line::HatLine.for?(person)).to eq(false)
    end
  end
end