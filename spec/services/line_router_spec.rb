require "rails_helper"

RSpec.describe LineRouter do
  let(:router) { LineRouter.new }
  describe '#initialize' do
    it 'has two default line types' do
      expect(router.lines.count).to eq(2)      
    end    
  end

  describe '#direct' do 
    context 'when eligible for only one line' do
      it 'directs a hat person to the hat line' do
        person = Person.new(name: 'hat guy', shoes: false, hat: true)
        line = router.direct(person)
        expect(line).to eq (Line::HatLine)
      end

      it 'directs a shoes person to the shoes line' do
        person = Person.new(name: 'hat guy', shoes: true, hat: false)
        line = router.direct(person)
        expect(line).to eq (Line::ShoeLine)
      end
    end

    context 'when eligible for more than one line' do
      it 'directs to the first eligible line' do
        person = Person.new(name: 'hat and shoe guy', shoes: true, hat: true)
        line = router.direct(person)
        expect(line).to eq (router.lines.first)
      end
    end
  end
end