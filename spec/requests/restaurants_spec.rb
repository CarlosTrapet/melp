require 'rails_helper'

describe 'Create Restaurant without name', type: :request do
  it "returns to restaurants#new and doesn't add Restaurant" do 

    restaurant_attributes = FactoryBot.attributes_for(:restaurant)
    
    expect {
      post("/restaurants", :params => { restaurant: restaurant_attributes } )
    }.to_not change(Restaurant, :count)
  end
end
