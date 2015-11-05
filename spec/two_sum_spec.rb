require 'two_sum'

describe "Array#two_sum" do

  subject(:array) {[1, 0, -1, 2, 3, -2, 0, 5, 25, 2345]}

  it "returns the indices of numbers whose sum equals zero" do
    expected_return = [[0, 2], [1, 6], [3, 5]]
    expect(array.two_sum).to eq(expected_return)
  end

  it "return empty array when no two elements sum to zero" do
    array = [1,2,3]
    expect(array.two_sum).to be_empty
  end

  it "return empty array when self contains fewer than two elements" do
    array = [1]
    expect(array.two_sum).to be_empty
  end

  it "doesn't count spurious zeroes" do
    expect(array.two_sum).not_to be_include([1,1])
  end

  it "does count zeroes at different indices" do
    expect(array.two_sum).to be_include([1, 6])
  end

  it "raises error if passed any arguments" do
    expect { array.two_sum([1]) }.to raise_error(ArgumentError)
  end

  it "raises an error when called on object other than array" do
    object = 5
    expect { object.two_sum }.to raise_error(NoMethodError)
  end

end
