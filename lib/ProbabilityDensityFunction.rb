class ProbabilityDensityFunction
  def self.solve(p1, a2, x)
    (1 / (- Math.log(p1)) * (a2* (1 - p1) * Math.exp(-a2 * x))/(1 - (1 - p1) * Math.exp(-a2 * x)))
  end

  def self.mode(p1, a2)
    (a2* (1 - p1)) / (-p1 * Math.log(p1))
  end

  def self.maximum_value(p1, a2)
    mode = mode(p1, a2)
    ProbabilityDensityFunction.solve(p1, a2, mode)
  end

  def self.mean(p1, a2)
   -( Math.log(2, 1 - p1)/ a2 * Math.log(p1))
  end

  def self.variance(p1, a2)
    -2 * (Math.log(3, 1 - p1)/ Math.sqrt(a2) * Math.log(p1)) - (Math.sqrt(Math.log(2, 1 - p1))/ Math.sqrt(a2) * Math.sqrt(Math.log(p1)))
  end

  def self.deviation(p1, a2, generation_count)
    variance = ProbabilityDensityFunction.variance(p1, a2)
    Math.sqrt(variance / generation_count)
  end
end
