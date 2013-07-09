FactoryGirl.define do
	factory :item do
		description "rebecca taylor blouse" 
		name "top"
		price "$300"
		url "www.item.com"
		user 
		count 20
	end

	factory :user do
		name "christina"
		sequence :email do |n| 
			"foo#{n}@bar.com" 
		end
		password "apples"
		password_confirmation "apples"
	end

	factory :review do
		user
		item
		text "LOVE this shirt! Recommend."
	end

end