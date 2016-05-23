require 'rails_helper'

RSpec.describe LineManagerController, type: :controller do

  before(:each) do
    Line.delete_all
    @hat_line = Line::HatLine.create({name: 'Hat Line', people: [] })
    @shoe_line = Line::ShoeLine.create({name: 'Shoe Line', people: [] })
    @default_line = Line::DefaultLine.create({name: 'Default Line', people: [] })
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #route" do
    it "returns http success" do
      post :route, person: {name: 'Hat Guy', shoes: '0', hat: '1'}
      expect(response).to have_http_status(:redirect)

      @hat_line.reload
      @shoe_line.reload
      @default_line.reload
      expect(@hat_line.people.count).to eq (1)
      expect(@shoe_line.people.count).to eq (0)
      expect(@default_line.people.count).to eq (0)
    end
  end
end
