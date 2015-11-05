require 'stock_picker'

describe 'stock_picker' do
  subject(:stocks)  { [45, 67, 20, 100, 20, 100, 86, 47, 65, 55, 54] }
  let(:hindsight_2020) { [36, 55, 75, 20] }

  it 'returns the most profitable stock' do
    expect(stock_picker(stocks)).to eq([2, 3])
  end

  it 'does not look back in time' do
    return_value = stock_picker(hindsight_2020)
    expect(return_value[0]).to be < return_value[1]
  end

  it 'when there\'s a tie returns earliest occurrence' do
    expect(stock_picker(stocks)).to eq([2, 3])
  end

  it "returns empty array if given one or zero stock prices" do
    one_stock = [50]
    expect(stock_picker(one_stock)).to eq([])
  end

end
