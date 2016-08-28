describe Dish do

  before do
    @dish = Dish.new(name:"salad", price:70, category: "main")
    @dish.save
  end

it 'should have a name' do
  expect(Dish.first(name: "salad").name).to eq "salad"
end

it 'should have a price' do
  expect(Dish.first(name: "salad").price).to eq 70
end

it 'should have a category' do
  expect(Dish.first(name: "salad").category).to eq "main"
end

it {is_expected.to validate_presence_of(:name)}

it {is_expected.to validate_presence_of(:price)}

it {is_expected.to validate_presence_of(:category)}

end
