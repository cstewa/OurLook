require 'spec_helper'

describe User do
	before do
		@user = FactoryGirl.create(:user)
	end

	it "authenticates with a valid email and password" do
		expect(@user.valid?).to be_true
	end

	it "fails to authenticate" do
		user = User.create(:name => "doesnt_work")
		expect(user.valid?).to be_false
	end

	it "writes a review" do
		review = FactoryGirl.create(:review)
		expect(review.user.reviews.empty?).to be_false
	end

	it "buys an item" do
		item = FactoryGirl.create(:item)
		expect(item.user.items.empty?).to be_false
	end 

end
