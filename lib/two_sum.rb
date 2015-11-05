class Array

  def two_sum
    result = []
    idx1 = 0
    while idx1 < self.length - 1
      idx2 = idx1 + 1
      while idx2 < self.length
        result << [idx1, idx2] if self[idx1] + self[idx2] == 0
        idx2 += 1
      end
      idx1 += 1
    end
    result.sort
  end

end
