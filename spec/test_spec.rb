require "spec_helper.rb"

describe "Testing" do 
	it "is really great at testing addition" do
		expect(2+2).to eq(4)
	end
	it "is good at testing truthyness" do
		expect(true).to eq(true)
	end
	it "is good at testing falsyness" do
		expect(false).to be false
	end
	it "is good at testing falsyness" do
		expect("").to be_truthy
	end
	it "is good at testing falsyness" do
		expect(nil).to be_falsy
	end
end