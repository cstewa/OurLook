require 'spec_helper'

describe Item do
	before do 
		@item = FactoryGirl.create(:item)
	end 

	it "has a count that can diminish by one" do
		@item.count = (@item.count - 1)
		expect(@item.count).to eq(19)
	end

	it "is available (ie i wrote that is_available method)" do
		expect(@item.is_available?).to eq(true)
	end

	it "is not available (per that same method)" do
		@item.count = 0
		expect(@item.is_available?).to eq(false)
	end

	it "has the right user" do
		expect(@item.user).to eq(User.find_by_name("christina"))
	end

	it "can have reviews" do
		review = FactoryGirl.create(:review)
		expect(review.item.reviews).to include(review)
	end

end
