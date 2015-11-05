require 'my_unique'

describe "Array#my_unique" do
  let(:array) {[1,2,2,4,5,6,4,6,5]}

  it "returns a copy of original array without duplicates" do
    expected_array = [1,2,4,5,6]
    expect(array.my_unique).to eq(expected_array)
  end

  it "returns a copy of original array if no duplicates" do
    array = [1,2,3]
    expect(array.my_unique).to eq(array)
  end

  it "does not modify original array" do
    expect(array.my_unique).not_to be(array)
  end

  it "return an empty array if original is empty" do
    empty_array = []
    expect(empty_array.my_unique).to be_empty
  end

  # it "returns an array with one element" do
  #   array = [1]
  #   expect(array.my_unique).to eq(array)
  # end
end
