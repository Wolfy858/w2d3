require 'my_transpose'

describe "my_transpose" do
  let(:square_grid) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
  let(:rectangle_grid) {[
  [0, 1, 2, 3],
  [4, 5, 6, 7],
  [8, 9, 10,11]
]}

  it "turns a grid on its side" do
    expected_grid =
    [[0, 3, 6],
     [1, 4, 7],
     [2, 5, 8]]
    expect(my_transpose(square_grid)).to eq(expected_grid)
  end

  it "does not mutate original grid" do
    expect(my_transpose(square_grid)).not_to be(square_grid)
  end

  # it "transposes a rectangular grid" do
  #   expected_grid = [
  #     [0, 4, 8],
  #     [1, 5, 9],
  #     [2, 6, 10],
  #     [3, 7, 11]
  #   ]
  #   expect(my_transpose(rectangle_grid)).to eq(expected_grid)
  # end
  # it "inserts nil values when element is not available" do
  #   square_grid[0].pop
  #   expected_grid =
  #   [[0, 3, 6],
  #    [1, 4, 7],
  #    [nil, 5, 8]]
  #
  #   expect(my_transpose(square_grid)).to eq(expected_grid)
  # end


end
