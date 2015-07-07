require "spec_helper.rb"

describe "#select" do
	it "Selects the odds" do 
		expect([1,2,3,4,5].select{|num| num.odd?}).to eq([1,3,5])
	end
end

describe "#reject" do
	it "Gets rid of all of the evens" do 
		expect([1,2,3,4,5].reject{|num| num.even?}).to eq([1,3,5])
	end
end

describe "#collect #map" do
	it "returns result a number of times described" do 
		expect((1..3).collect{"Hey"}).to eq(["Hey", "Hey", "Hey"])
	end
	it "returns result a number of times described" do 
		expect((1..5).map{|i| i*i}).to eq([1,4,9,16,25])
	end
end

describe "#detect #find" do
	it "Find and puts output if something satisfys the function" do 
		expect((1..10).detect{ |i| i % 5 == 0 and i % 7 == 0 }).to eq(nil)
	end
	it "Find and puts output if something satisfys the function" do 
		expect((1..100).find{ |i| i % 5 == 0 and i % 7 == 0 }).to eq(35)
	end
end

describe "#inject" do
	it "Executes math defined after method" do 
		expect((5..10).inject{ |sum, n| sum + n }).to eq(45)
	end
end

describe "#partition" do
	it "Breaks into two arrays based on logic defined" do 
		expect((1..6).partition{ |v| v.even? }).to eq([[2, 4, 6], [1, 3, 5]])
	end
end

describe "#sort" do
	it "Sorts based on logic defined otherwise by value or letter" do 
		expect((1..10).sort { |a, b| b <=> a }).to eq([10,9,8,7,6,5,4,3,2,1])
	end
end

describe "#one" do
	it "does the array return true exactly once" do 
		expect(%w{ant bear cat}.one? { |word| word.length < 4 }).to eq(false)
	end
	it "does the array return true exactly once" do 
		expect([ nil, true, false ].one? ).to eq(true)
	end
end

describe "#none" do
	it "Does the array return true ever?" do 
		expect(%w{ant bear cat}.none?{ |word| word.length == 5 }).to eq(true)
	end
	it "Does the array return true ever?" do 
		expect([nil, false, true].none?).to eq(false)
	end

end

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