require 'spec_helper'

describe Review do

	it "has a user and can access that user's name" do
		review = FactoryGirl.create(:review)
		expect(review.user.name).to eq("christina")
	end

	it "belongs to an item" do 
		review = FactoryGirl.create(:review)
		expect(review.item.price).to eq("$300")
	end

end
